const express = require("express");
const db = require("./../modules/connect-db");
const router = express.Router();

async function getMtls(){
    const output = {
        success: false,
        message: '',
        rows: [],
      };
    let where = ' WHERE 1 ';
    // SELECT * FROM `mtl` WHERE 1 AND `mtl_cate` = 'top';
    // SELECT * FROM `mtl` WHERE 1 AND `mtl_cate` = 'ing';
    const t_sql = `SELECT * FROM mtl ${where}`;
    const [rs] = await db.query(t_sql); 

    if(rs.length === 0){
        output.message = 'MtlData not found';
        return output;
    }
  
      output.success = true;
      output.rows = rs;
      return output;
}


async function stockpile(){
  const output = {
    success: false,
    message: '',
    rows: [],
  };

  const memid=0;  // 假資料

  // 確認儲存狀態
  const sql= `SELECT * FROM cm_prod WHERE mem_id=${memid} AND cm_prod_status='undone'`;
  const [info]=await db.query(sql);
  // console.log(info.length===0);

  if(info.length===0){
    // true(沒有找到)做"新增"
    const addNewCusDataSQL = "INSERT INTO `cm_prod`(`cm_prod_id`, `cm_prod_name`, `cm_prod_value`, `cm_prod_print_time`, `cm_prod_img_path`, `mem_id`, `cm_prod_edit_time`, `cm_prod_status`, `orders_category`) VALUES (?,?,?,?,?,?,NOW(),'undone','cm')";
    console.log('還沒寫新增齁');
  }else{
    // false(找到)做"修改"+新增
    // 修改
    const editCusDataSQL = `UPDATE cm_prod SET cm_prod_status='del' WHERE mem_id=? AND cm_prod_status=?`;
    const [editCusData]= await db.query(editCusDataSQL, [
      memid, 
      'undone',
    ])

    if(editCusData.affectedRows===1){ 
      // 如果修改成功 則 新增
      const addCusDataSQL = `INSERT INTO cm_prod(mem_id, cm_prod_edit_time, cm_prod_status, orders_category) VALUES (${memid},NOW(),'undone','cm')`;
      const [addCusData] = await db.query(addCusDataSQL);
      const addNewId = addCusData.insertId;
      if(addCusData.affectedRows===1){
        // 新增詳細至cm_prod_mtl表
        const newCusMtlDataSQL = `INSERT INTO cm_prod_mtl(cm_prod_id, mtl_id, mtl_layer, mtl_pct) VALUES (?,?,?,?)`;
        const [addNewCusMtlData] = await db.query(newCusMtlDataSQL, [
          addNewId, 
          3, // mtlId,
          1, // mtl_layer, 
          1, // mtl_pct
        ]);
      }else{
        output.success=false;
        output.message='新增詳細清單失敗';
      }
    }else{
      output.success=false;
      output.message='修改產品列表失敗';
    }
  }
}

//取得所有mtl資料
router.get("/api/getmtls", async (req, res) => {
  res.json(await getMtls());
});

// 接收看看
router.post("/api/postcusdata", async (req, res) => {
  res.json(req.body);
  // console.log('接收的東西：',req.body);

  stockpile();
})

module.exports = router;