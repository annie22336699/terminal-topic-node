const express = require("express");
const db = require("./../modules/connect-db");
const router = express.Router();

// 取得材料資料轉json
async function getMtls(){
    const output = {
        success: false,
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

// 把資料傳進SQL
async function stockpile(req){
  const output = {
    success: false,
    message: '',
    rows: [],
  };

  const memid=req.body.memid ?? 0;
  const cmProd=req.body.cm_prod ?? 0;
  let totalValue = 0;
  let totalPrint = 0;

  // // 計算總金額及總印製時間
  // const countValueAndTimeSQL = `SELECT cm_prod_mtl.*, mtl.mtl_value, mtl.mtl_print_time 
  // FROM cm_prod_mtl
  // LEFT JOIN mtl
  // ON cm_prod_mtl.mtl_id=mtl.mtl_id`
  // const [totalValueandTime] = await db.query(countValueAndTimeSQL)
  // const totalValue = totalValueandTime[i].mtl_pct*totalValueandTime[i].mtl_value;
  // const totalTime = totalValueandTime[i].mtl_pct*totalValueandTime[i].mtl_print_time;

  // 確認儲存狀態
  const sql= `SELECT * FROM cm_prod WHERE mem_id=${memid} AND cm_prod_status='undone'`;
  const [info]=await db.query(sql);
  // console.log(info.length===0);

  if(info.length===0){
    // true(沒有找到)做"新增"
    const addNewCusDataSQL = "INSERT INTO `cm_prod`( `mem_id`, `cm_prod_edit_time`, `cm_prod_status`, `orders_category`) VALUES (?,NOW(),'undone','cm')";
    const [addCusData] = await db.query(addNewCusDataSQL, [

      memid,
    ]);
    const addNewId = addCusData.insertId;

    if(addCusData.affectedRows===1){
      // 新增詳細至cm_prod_mtl表

      cmProd.map(async (e,i)=>{
        const newCusMtlDataSQL = `INSERT INTO cm_prod_mtl(cm_prod_id, mtl_id, mtl_layer, mtl_pct) VALUES (?,?,?,?)`;
        const [addNewCusMtlData] = await db.query(newCusMtlDataSQL, [
            addNewId, 
            e.mtlId,
            i, 
            e.mtlPct
          ]);

        const getValueAndPrintSQL = `SELECT mtl_value, mtl_print_time FROM mtl WHERE mtl_id=${e.mtlId}`;
        const [res] = await db.query(getValueAndPrintSQL);
        totalValue += +res[0].mtl_value * e.mtlPct;
        totalPrint += +res[0].mtl_print_time * e.mtlPct;

        // 把拿到的金額跟值塞回去
        const updateCusDataSQL = `UPDATE cm_prod SET cm_prod_value=?, cm_prod_print_time=? WHERE mem_id=? AND cm_prod_status='undone'`
        const [updateCusData] = await db.query(updateCusDataSQL, [
          totalValue, 
          totalPrint, 
          memid,
        ]);
      });

    }else{
      output.success=false;
      output.message='新增詳細清單失敗';
    }

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

        cmProd.map(async (e,i)=>{
          const newCusMtlDataSQL = `INSERT INTO cm_prod_mtl(cm_prod_id, mtl_id, mtl_layer, mtl_pct) VALUES (?,?,?,?)`;
          const [addNewCusMtlData] = await db.query(newCusMtlDataSQL, [
              addNewId, 
              e.mtlId,
              i, 
              e.mtlPct
            ]);

          const getValueAndPrintSQL = `SELECT mtl_value, mtl_print_time FROM mtl WHERE mtl_id=${e.mtlId}`;
          const [res] = await db.query(getValueAndPrintSQL);
          totalValue += +res[0].mtl_value * e.mtlPct;
          totalPrint += +res[0].mtl_print_time * e.mtlPct;

          // 把拿到的金額跟值塞回去
          const updateCusDataSQL = `UPDATE cm_prod SET cm_prod_value=?, cm_prod_print_time=? WHERE mem_id=? AND cm_prod_status='undone'`
          const [updateCusData] = await db.query(updateCusDataSQL, [
            totalValue, 
            totalPrint, 
            memid,
          ]);
        });

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

// 撈出資料
async function getCusProd(req){
  const output = {
    success: false,
    rows: [],
  };

  const memid=req.body.memid ?? 0;

  const CusProd_sql = `SELECT * FROM cm_prod WHERE mem_id=${memid} AND cm_prod_status='undone'`;
  // const test = `SELECT cm_prod.*, cm_prod_mtl.*, mtl.mtl_sugar, mtl.mtl_oil, mtl.mtl_protein, mtl.mtl_carbo, mtl.mtl_na, mtl.mtl_calories
  // FROM cm_prod
  // LEFT JOIN cm_prod_mtl
  // ON cm_prod_mtl.cm_prod_id=cm_prod.cm_prod_id
  // LEFT JOIN mtl
  // ON cm_prod_mtl.mtl_id=mtl.mtl_id`;
  const [rs] = await db.query(CusProd_sql); 
  
  if(rs.length === 0){
    output.message = 'Product is not found';
    return output;
}

  output.success = true;
  output.rows = rs;
  return output;
}

// 取得做好的材料
async function getCusMtls(){
  const output = {
      success: false,
      rows: [],
    };
  // const t_sql = `SELECT * FROM mtl WHERE 1`;
  // const [rs] = await db.query(t_sql); 

  // if(rs.length === 0){
  //     output.message = 'MtlData not found';
  //     return output;
  // }

  //   output.success = true;
  //   output.rows = rs;
  //   return output;
}


// 把資料傳進SQL
async function addname(req){
  const output = {
    success: false,
    message: '',
    rows: [],
  };

  const memid=req.body.memid ?? 0;
  const cusProdName=req.body.cus_name ?? 0;

  console.log('memid:', memid, 'cusProdName:', cusProdName)

  // 確認儲存狀態
  const sql= `SELECT * FROM cm_prod WHERE mem_id=${memid} AND cm_prod_status='undone'`;
  const [info]=await db.query(sql);

  // 修改
  const editCusDataSQL = `UPDATE cm_prod SET cm_prod_status='completed',cm_prod_name=? WHERE mem_id=? AND cm_prod_status='undone'`;
  const [editCusData]= await db.query(editCusDataSQL, [
    cusProdName,
    memid, 
  ])
}

//取得所有mtl資料
router.get("/api/getmtls", async (req, res) => {
  res.json(await getMtls());
});

// 接收看看
router.post("/api/postcusdata", async (req, res) => {
  res.json(req.body);
  stockpile(req);
})

// 取得該會員做好的品項
router.post("/api/getcusprod", async (req, res) => {
  res.json(await getCusProd(req));
});

router.post("/api/postfinaldata", async (req, res) => {
  res.json(req.body);
  addname(req);
});

//加進購物車
// addToCart(data.memid,sendListToSetOrder.insertId,data.combo,data.combosum/data.combo,0,'set')

module.exports = router;