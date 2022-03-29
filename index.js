// console.log(process.env.NODE_ENV);
/*------ 引入套件 start------- */
require('dotenv').config();
// 1. 引入 express 在express 的套件基本設定
const express = require('express');
//引入multer 套件
const multer = require('multer');

// 引入 session 套件
const session = require('express-session');
//  引入  express-mysql-session 套件
const MysqlStore = require('express-mysql-session')(session);

// 引入 moment-timezone   套件
const moment = require('moment-timezone');

// 用自訂模組方式引入 mysql 連線模組
const db = require('./modules/connect-db');
// 將session 資料存入mysql
const sessionStore = new MysqlStore({}, db);

// 引入CORS 的套件
const cors = require('cors');

//引入node-fetch的套件
// const fetch = require('node-fetch');

//引入axios的套件
const axios = require('axios');

//引入 bcrypt 的套件 加密解密
const bcrypt = require('bcryptjs');

// 引入 JWT 套件
const jwt = require('jsonwebtoken');

// 引入大家的路由
const home = require('./routes/home')
const latestNews = require('./routes/latest-news')
const shareRouter = require('./routes/shareRoutes');
const cartRouter = require('./routes/cartRoutes');
// const setOrder = require('./routes/setOrders');
const customize = require('./routes/customize');

/*------ 引入套件 end------- */

const app = express();

/*---------- 設定 middleware -----------*/

//Top-Level middleware
const corsOption = {
  credentials: true,
  origin: function (origin, cb) {
    cb(null, true);
  },
};
app.use(cors(corsOption));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(express.static('public'));
app.use('/joi', express.static('node_modules/joi/dist/'));

app.use(
  session({
    saveUninitialized: false,
    resave: false,
    secret: 'sdkfkdh984576894kjdkgjhdfkkjdfgjkfjsdfjhskAAAkdfjdsf',
    store: sessionStore,
    cookie: {
      maxAge: 1200000,
    },
  })
);

//自訂的頂層middleware

app.use((req, res, next) => {
  res.locals.shin = '哈囉';
  // res.send('oooo'); // 回應之後, 不會往下個路由規則

  // template helper functions 樣版輔助函式
  res.locals.toDateString = (d) => moment(d).format('YYYY-MM-DD');
  res.locals.toDatetimeString = (d) => moment(d).format('YYYY-MM-DD HH:mm:ss');
    //會員登入驗證
    res.locals.auth = null; //自訂的變數, 設定有沒有身分驗證 ,預設值為null
  let auth = req.get('Authorization');

  if (auth && auth.indexOf('Bearer ') === 0) {
    auth = auth.slice(7);
    try {
      const payload = jwt.verify(auth, process.env.JWT_KEY);
      res.locals.auth = payload;
    } catch (ex) {}
  }
  next();
});

//TODO步驟1.導入member登入用route
app.use('/member', require('./routes/member'));

//需要token授權才給資料的請導入此入徑

// 導入首頁的route
app.use('/home/api', home);
// 導入最新消息的route
app.use('/latest-news/api', latestNews);
// 導入經典商品的route
app.use('/classic', require('./routes/classic'));

// 導入分享牆的route
app.use('/api/share', shareRouter);

// 導入購物車的route
app.use('/api/cart', cartRouter);

// 導入客製化的route
app.use('/customize', customize);

//導入套餐的route
// app.use('/api/setorder', setOrder);
//* ********** 所有路由的後面  當路徑走錯的時候會跳出的提示訊息*/
app.use((req, res) => {
  // res.type("text/plain"); 回傳存文字檔
  res.status(404).send(`<h2>走錯路了</h2>`);
});

const port = process.env.PORT || 3001;
// 4. Server 偵聽
app.listen(port, function () {
  console.log(
    `server started: ${port} - `,
    new Date().toLocaleString('zh-TW', { timeZone: 'Asia/Taipei' })
  );
});
