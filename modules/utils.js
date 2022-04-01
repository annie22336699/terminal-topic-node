const db = require("./connect-db");
const addToCart = require("./../modules/utils");

async function addToCart(memid, pid, count, value, printTime, category) {
  const output = {
    success: false,
    message: "",
    rows: [],
  };

  //memid = 14; pid=17; count=1; value=50; printTime=30; category='cs';  //假資料們

  const sql = `SELECT * FROM cart WHERE mem_id=${memid} AND cart_status='未結帳'`;
  const [info] = await db.query(sql);

  if (info.length === 0) {
    //當此會員沒有未結帳的購物車時，新建一台購物車
    const newCartSql = `INSERT INTO cart(mem_id,cart_status) VALUES (${memid},'未結帳')`;
    const [res] = await db.query(newCartSql);

    if (res.affectedRows === 1) {
      //insert購物車成功
      const newCartId = res.insertId;
      //用新增的購物車id來新增訂單
      const insertOrderSql =
        "INSERT INTO cart_orders(`cart_id`, `mem_id`, `product_id`, `orders_value`, `orders_amount`, `orders_print_time`, `orders_category`, `orders_date`, `share_state`, `share_validity`) VALUES (?,?,?,?,?,?,?,NOW(),'inactive','yes')";
      const [insertOrderRes] = await db.query(insertOrderSql, [
        newCartId,
        memid,
        pid,
        value,
        count,
        printTime,
        category,
      ]);

      insertOrderRes.affectedRows === 1
        ? (output.success = true)
        : (output.message = "新增訂單失敗");
      return output;
    } else {
      //insert購物車失敗
      output.message = "創建購物車失敗";
      return output;
    }
  } else {
    //當此會員有未結帳的購物車時，將商品訂單加到同台購物車
    const cartId = info[0].cart_id;

    //判斷是否有相同的商品已在購物車
    const checkRepeatSql =
      "SELECT * FROM cart_orders WHERE mem_id=? AND cart_id=? AND orders_category=? AND product_id=?";
    const [checkInfo] = await db.query(checkRepeatSql, [
      memid,
      cartId,
      category,
      pid,
    ]);

    if (checkInfo.length === 0) {
      //無相同商品在同台購物車內，直接新增一筆訂單
      const insertOrderSql =
        "INSERT INTO cart_orders(`cart_id`, `mem_id`, `product_id`, `orders_value`, `orders_amount`, `orders_print_time`, `orders_category`, `orders_date`, `share_state`, `share_validity`) VALUES (?,?,?,?,?,?,?,NOW(),'inactive','yes')";
      const [addOrderRes] = await db.query(insertOrderSql, [
        cartId,
        memid,
        pid,
        value,
        count,
        printTime,
        category,
      ]);

      addOrderRes.affectedRows === 1
        ? (output.success = true)
        : (output.message = "新增訂單失敗");
      return output;
    } else {
      //如果已有相同商品在購物車，則只更改數量
      //先查詢原本數量
      const checkRepeatSql =
        "SELECT orders_amount FROM cart_orders WHERE mem_id=? AND cart_id=? AND orders_category=? AND product_id=?";
      const [checkInfo] = await db.query(checkRepeatSql, [
        memid,
        cartId,
        category,
        pid,
      ]);

      //更改數量(非新增)
      const updateCount = +checkInfo[0].orders_amount + count;
      const updateCountSql =
        "UPDATE cart_orders SET orders_amount=? WHERE mem_id=? AND cart_id=? AND orders_category=? AND product_id=?";
      const [updateInfo] = await db.query(updateCountSql, [
        updateCount,
        memid,
        cartId,
        category,
        pid,
      ]);

      updateInfo.affectedRows === 1
        ? (output.success = true)
        : (output.message = "修改訂單數量失敗");
      return output;
    }
  }
}
module.exports = addToCart;
