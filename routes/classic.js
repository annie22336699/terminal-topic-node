const express = require("express");
const db = require("./../modules/connect-db");
const router = express.Router();

async function getAllProds() {
    const output = {
      success: false,
      message: '',
      rows: [],
    };
    const t_sql = `SELECT * FROM cs_prod WHERE 1`;
    const [rs] = await db.query(t_sql); 

    if(rs.length === 0){
        output.message = 'No data found';
        return output;
    }

    output.success = true;
    output.rows = rs;
    return output;
}

async function getAllMtls() {
    const output = {
      success: false,
      message: '',
      rows: [],
    };
    const t_sql = `SELECT * FROM mtl WHERE 1`;
    const [rs] = await db.query(t_sql); 

    if(rs.length === 0){
        output.message = 'No data found';
        return output;
    }

    output.success = true;
    output.rows = rs;
    return output;
}
  
//取得所有商品資料
router.get("/api/getprods", async (req, res) => {
    res.json(await getAllProds());
});

//取得單一商品資料+所含的食材資料+推薦商品資料
//output.rows→ [{選定的商品資料}, [食材資料陣列], [推薦商品資料陣列]]
//output.rows→ [{pid:1, ...}, [{mtl_id:1, ...},{mtl_id:2, ...},{mtl_id:3, ...}], [{pid:3, ...},{pid:4, ...},{pid:5, ...}]]
router.get("/api/getprod/:id", async (req, res) => {
    const output = {
        success: false,
        message: '',
        rows: [],
      };

    //get product data
    const pid = parseInt(req.params.id);    
    const prodSql = `SELECT * FROM cs_prod WHERE pid=${pid}`;
    const [rs] = await db.query(prodSql);    
    
    if(rs.length === 0){
        output.message = 'No data found';
        return output;
    }

    output.rows.push(rs[0]);  //output內添加商品資料

    //get materials data
    const materialsData = [];
    const materialsArr = rs[0].c_prod_material_arr.split(',');
    const getMaterialData = async() => {
        for (const d of materialsArr) {
            const sql = `SELECT * FROM mtl WHERE mtl_id=${d}`;
            const [info] = await db.query(sql);

            if(info.length === 0){
                output.message = `No material found:${d}`;
                return output;
            }

            //處理時間格式
            const formatDate = (new Date(info[0].mtl_produce_date)).toISOString().substring(0, 10);
            materialsData.push({...info[0], mtl_produce_date: formatDate});
        }
    }
    await getMaterialData();
    output.rows.push(materialsData);  //output內添加食材資料

    //get recommend products data
    const recommendsData = [];
    const recommendsArr = rs[0].c_prod_rec_arr.split(',');
    const getRecommendData = async() => {
        for (const d of recommendsArr) {
            const sql = `SELECT * FROM cs_prod WHERE pid=${d}`;
            const [info] = await db.query(sql);

            if(info.length === 0){
                output.message = `No recommend product found:${d}`;
                return output;
            }

            recommendsData.push(info[0]);
        }
    }
    await getRecommendData();
    output.rows.push(recommendsData);  //output內添加推薦商品資料
    
    output.success = true;
    res.json(output);
});

//取得所有食材資料
router.get("/api/getmtls", async (req, res) => {
    res.json(await getAllMtls());
});
  
module.exports = router;