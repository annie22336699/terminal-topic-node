// cartRoutes.js
const express = require("express");
const db = require("./../modules/connect-db");
const router = express.Router();


async function getCart() {
    const output = {
        success: false,
        message: '',
        rows: [],
    };
    const t_sql = `SELECT * FROM cart `;
    const [rs] = await db.query(t_sql);

    if (rs.length === 0) {
        output.message = 'No data found';
        return output;
    }

    output.success = true;
    output.rows = rs;
    return output;
    
}

//測試是否拿到資料
router.get("/steponetest", async (req, res) => { 
        res.json(await getCart());

});
//撈出store 全部的
router.get("/stepone/:id", async (req, res) => {
    let id = parseInt(req.params.id);
    const output = {
        success: false,
        message: '',
        rows: [],
    };

    const find_cartid = `SELECT cart_id FROM cart WHERE cart_status='未結帳' AND mem_id=${id}`;
    const [rs] = await db.query(find_cartid);
    const cartid = rs[0].cart_id;

    // join 的sql 要在這裡寫完
    // const sql = `SELECT * FROM cart_orders WHERE mem_id=${id}`;
    const cs_sql =`SELECT o.*, cs_prod.c_prod_ch_name ,cs_prod.c_prod_img_path
                    FROM cart_orders o
                    INNER join cs_prod  
                    ON o.orders_category = cs_prod.orders_category 
                    WHERE o.product_id = cs_prod.pid AND o.mem_id=${id} AND o.cart_id=${cartid}`;
    const cm_sql =`SELECT o.*, cm_prod.cm_prod_name , cm_prod.cm_prod_img_path
                    FROM cart_orders o
                    INNER JOIN cm_prod 
                    ON o.orders_category = cm_prod.orders_category
                    WHERE o.product_id = cm_prod.cm_prod_id AND o.mem_id=${id} AND o.cart_id=${cartid}`;
    // const set_sql =`SELECT set_order.*,sets.set_name ,sets.set_price
    //                 FROM set_order 
    //                 JOIN sets
    //                 WHERE sets.set_id=set_order.set_id AND cart_orders.mem_id=${id}`;
    // const set_sql = `SELECT s.* ,o.*
    //                  FROM(SELECT o.*,sets.set_name ,sets.set_price 
    //                     FROM set_order o
    //                     JOIN sets
    //                     WHERE sets.set_plan_id=o.set_plan_id) as s
    //                  JOIN cart_orders o
    //                  ON s.orders_category = o.orders_category
    //                  WHERE o.product_id = s.set_plan_id AND o.mem_id=${id} AND o.cart_id=${cartid} AND s.mem_id=${id}`; 
    
    const set_sql = `SELECT o.*,s.* 
                     FROM set_order s
                     JOIN cart_orders o
                     ON s.orders_category = o.orders_category
                     WHERE o.product_id = s.set_order_id AND o.mem_id=${id} AND o.cart_id=${cartid} AND s.mem_id=${id}`; 
    
    
    // const [rs, fields] = await db.query(sql);
    const [rs1] = await db.query(cs_sql);
    const [rs2] = await db.query(cm_sql);
    const [rs3] = await db.query(set_sql);
    const newRs3 = [];

    // rs3.forEach(async (d) => {
    //     const setId = d.set_order_id;
    //     const setInfo_sql = `SELECT set_ben_detail.set_order_id,set_ben_detail.bento_id, set_meal.bento_ch_name, set_meal.bento_en_name
    //                     FROM set_ben_detail 
    //                     JOIN  set_meal
    //                     ON set_ben_detail.bento_id = set_meal.bento_id 
    //                     WHERE set_ben_detail.set_order_id=${setId} AND set_meal.set_id=set_ben_detail.set_id`;
    //     const [setInfo] = await db.query(setInfo_sql);
    //     console.log({ ...d, set_info_array: setInfo });
    //     newRs3.push({ ...d, set_info_array: setInfo });
    // })
    
    const setInfo = async () => {
        for (const d of rs3) {
            const setId = d.set_order_id;
            const setInfo_sql = `SELECT set_ben_detail.set_order_id,set_ben_detail.bento_id, set_meal.bento_ch_name, set_meal.bento_en_name
                        FROM set_ben_detail 
                        JOIN  set_meal
                        ON set_ben_detail.bento_id = set_meal.bento_id 
                        WHERE set_ben_detail.set_order_id=${setId} AND set_meal.set_id=set_ben_detail.set_id`;
            const [setInfo] = await db.query(setInfo_sql);
            newRs3.push({ ...d, set_info_array: setInfo });
        }
    }    

    await setInfo();
    
    output.data = { cs: rs1, cm: rs2, set: newRs3 };
    
    res.json(output);
});


/*
//拿取地圖的資料
async function getData(req, res) {
    const output = {
        success: false,
        rows: [],
    };
    const t_sql = "SELECT * FROM `store`";
    const [rs1] = await db.query(t_sql);
    output.rows = rs1;
    console.log(output)
}

//測試是否拿到資料
router.get("/storeList", async (req, res) => {
    res.json(await getData(req, res));
});

//撈出store 全部的
router.get("/store", async (req, res) => {
    const sql = "SELECT * FROM `store`";
    const [rs, fields] = await db.query(sql);
    res.json(rs);
});



// 資瞭庫變更後 直接找行政區id
router.get("/api/store/areaid", async (req, res) => {
    const sql = "SELECT DISTINCT `store_area_id`, `store_area` FROM `store`";
    const [rs, fields] = await db.query(sql);
    res.json(rs);
});

// 找行政區+店
router.get("/api/store/areastore", async (req, res) => {
    const sql = "SELECT `store_id`, `store_area`,`store_name` FROM `store` WHERE `store_area_id`=2";
    const [rs, fields] = await db.query(sql);
    res.json(rs);
});

//insert
//加入購物車 &填寫折扣金額

//購買人資訊(與前一次購買紀錄相同)備註  購物門市

//填寫信用卡資訊

*/

module.exports = router;