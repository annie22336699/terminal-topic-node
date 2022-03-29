const express = require("express");
const db = require("./../modules/connect-db");
const bcrypt = require("bcryptjs");
const saltRounds = 10;
const router = express.Router();
const jwt = require("jsonwebtoken");
const { route } = require("express/lib/application");
const auth = require("../auth/auth"); //TODO 步驟2. 引入auth.js
const nodemailer = require("nodemailer"); //引入modemailer
const assert = require("assert");
const { request } = require("http");
const uploadImg = require('../modules/upload-images')
//驗證信發送設定
const transporter = nodemailer.createTransport({
  host: "smtp.gmail.com",
  port: 465,
  auth: {
    user: "injoe1001@gmail.com",
    pass: "pwifepagqubnijes",
  },
});

async function getData(req, res) {
  const output = {
    success: false,
    rows: [],
  };
  const t_sql = `SELECT * FROM mem WHERE 1`;
  const [rs1] = await db.query(t_sql);
  output.rows = rs1;
  //console.log(output)
}

//測試是否拿到資料
router.get("/api/memberList", async (req, res) => {
  res.json(await getData(req, res));
});

//登入檢查
router.post("/api/auth-list", async (req, res) => {
  const output = {
    success: false,
    error: "",
    info: "",
    token: "",
    code: 0,
  };
  // console.log("account:" + req.body.mem_account)
  //檢查是否獲得資料

  const [rs] = await db.query("SELECT * FROM mem WHERE mem_account=?", [
    req.body.mem_account,
  ]);

  if (!rs.length) {
    output.error = "帳號密碼錯誤";
    output.code = 401;
    return res.json(output);
  }

  const row = rs[0];
  const compareResult = await bcrypt.compare(req.body.mem_pwd, row.mem_pwd);
  if (!compareResult) {
    output.error = "帳號密碼錯誤";
    output.code = 402;
    return res.json(output);
  }

  const { mem_id, mem_account } = row;
  output.success = true;
  output.info = { mem_id, mem_account };
  output.token = jwt.sign({ mem_id, mem_account }, process.env.JWT_KEY);
  res.json(output);
});

//確認使用者是否有帶token的API
router.get("/api/auth-list/me", async (req, res) => {
  if (res.locals.auth && res.locals.auth.mem_account) {
    res.json({
      ...(await getData(req, res)),
      ok: 1,
      data: {
        mem_id: res.locals.auth.mem_id,
        mem_account: res.locals.auth.mem_account,
      },
    });
  } else {
    res.json({ success: false, error: "沒有授權" });
  }
});

//TODO 步驟3. 撰寫自己需要的router ,我這支是用mem_id找此id會員的所有資訊
//TODO 步驟4. 依照傳輸的資料是否需要夾帶token來決定是否要加上 auth.isToken這個中介層(這是用來幫忙過濾進來的使用者是否有帶token )
router.post("/api/find-member", auth.isToken, async (req, res) => {
  const [rs] = await db.query("SELECT * FROM mem WHERE mem_id=?", [
    req.body.mem_id,
  ]);
  const newData = rs.map((d) => {
    return { ...d, mem_birthday: res.locals.toDateString(d.mem_birthday) };
  });
  res.json(newData);
});

//忘記密碼頁郵件驗證
router.post("/api/accountCheck", async (req, res) => {
  const output = {
    success: false,
    error: "",
    info: "",
    code: 0,
  };
  // console.log("account:" + req.body.mem_account)
  //檢查是否獲得資料

  const [rs] = await db.query("SELECT * FROM mem WHERE mem_account=?", [
    req.body.mem_account,
  ]);

  if (!rs.length) {
    output.error = "此用戶不存在";
    output.code = 403;
    return res.json(output);
  }

  const row = rs[0];

  const { mem_id, mem_account } = row;
  output.success = true;
  output.info = { mem_id, mem_account };
  res.json(output);
});

//會員註冊驗證信發送

router.post("/api/member-registermail", async (req, res) => {
  const output = {
    success: "false",
    errorMessage: "",
    code: 0,
    verify_code: "",
  };
  const regEmail =
    /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z]+$/; //驗證郵件格式
  const email = req.body.registerData.mem_account;

  const ranSixNum = () => {
    let code = "";
    for (let i = 0; i < 6; i++) {
      code += parseInt(Math.random() * 10);
    }
    return code;
  }; // 隨機生成6位數

  if (regEmail.test(email)) {
    let verify_code = ranSixNum();
    transporter
      .sendMail({
        from: '"Primeal" <injoe1001@gmail.com>', // 發信人
        to: email, //收信人
        subject: "印食註冊驗證信",
        html: `
      <p>歡迎您的加入!</p>
      <p>您正在註冊 Primeal 印食 的會員帳戶</p> 
      <p>請您輸入以下驗證碼: <strong style="color: #841d29;">${verify_code}</strong></p> 
      <p>***此驗證碼五分鐘內有效***</p>`,
      })
      .then((info) => {
        console.log({ info });
      })
      .catch(console.error);
    output.success = true;
    output.verify_code = verify_code;
  } else {
    output.success = false;
    output.errorMessage = "請輸入正確郵件!";
    output.code = "404";
  }
  res.json(output);
});

//會員註冊router

router.post("/api/member-register", async (req, res) => {
  const output = {
    success: false,
    error: "",
  };
  const memInpVcode = parseInt(req.body.registerData.memInpVcode);
  const verify_code = parseInt(req.body.verify_code);
  
  const hash = await bcrypt.hash(req.body.registerData.mem_pwd, saltRounds);
  const sql =
    "INSERT INTO `mem`(`mem_account`, `mem_pwd`, `mem_name`, `mem_nickname`, `mem_gender`,  `mem_mobile`, `mem_birthday`, `mem_create_date`) VALUES (?,?,?,?,?,?,?,NOW())";
  if (memInpVcode === verify_code) {
    try {
      let result;
      [result] = await db.query(sql, [
        req.body.registerData.mem_account,
        hash,
        req.body.registerData.mem_name,
        req.body.registerData.mem_nickname,
        req.body.registerData.mem_gender,
        req.body.registerData.mem_mobile,
        req.body.registerData.mem_birthday,
      ]);
      if (result.affectedRows === 1) {
        output.success = true;
      } else {
        output.error = "無法新增會員";
      }
    } catch (ex) {
      console.log(ex);
      output.error = "出現無法預期錯誤";
    }
  }else{
    output.error="驗證碼錯誤";
  }
  res.json(output);
});

//會員照片上傳

router.post('/api/member-img-upload', uploadImg.single('avatar'), async (req, res) => {
  let modifyAvatar = "";
  if(req.file && req.file.filename){
    modifyAvatar = req.file.filename
  };
  const sql = "UPDATE `mem` SET `mem_photo_img_path`=? WHERE mem_id=? ";
  const [result] = await db.query(sql, [
    modifyAvatar,
    req.body.mem_id,
  ])
  
  res.json(req.file)
})

//會員資訊修改
router.post("/api/member-revise", async (req, res) => {
  const output = {
    success: false,
    error: "",
  };

  console.log("body:" + req.body.memInfo.mem_nickname);

  const sql =
    "UPDATE `mem` SET `mem_name`=?,`mem_nickname`=?,`mem_gender`=?,`mem_mobile`=?,`mem_birthday`=? WHERE mem_id=?";

  const [result] = await db.query(sql, [
    req.body.memInfo.mem_name,
    req.body.memInfo.mem_nickname,
    req.body.memInfo.mem_gender,
    req.body.memInfo.mem_mobile,
    req.body.memInfo.mem_birthday,
    req.body.mem_id,
  ]);

  console.log(result);
  output.success = !!result.affectedRows;
  output.result = result;
  res.json(output);
});

module.exports = router;
