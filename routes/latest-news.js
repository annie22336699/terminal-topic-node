const express = require("express");
const db = require("./../modules/connect-db");
const router = express.Router();
const moment = require('moment-timezone');


async function getNewsData(req, res) {
    const output = {
        success: false,
        error: '',
        data: [],
    };

    const news_sql = `SELECT * FROM news`;
    const [newsRS] = await db.query(news_sql);
    // console.log('newsRS:', newsRS[0].news_start_date)

    // SQL
    // [
    //     {
    //       news_id: 1,
    //       c_prod_id: 23,
    //       news_title: '春天來了! 羊羹櫻花凍壽司新上市',
    //       news_cate: '新品上市',
    //       news_start_date: 2022-02-28T16:00:00.000Z,
    //       news_end_date: 2022-04-29T16:00:00.000Z,
    //       news_detail: '充滿粉紅氣息的春天終於來了! PRIMEAL推出粉色的羊羹櫻花凍口味壽司，清爽口感搭配淡淡的櫻
    //   花香，給您不一樣的2022春天! ',
    //       news_upload_date: 2022-02-21T16:00:00.000Z,
    //       news_edit_datetime: Invalid Date,
    //       news_img_path: 'new-cherry-blossom.png',
    //       news_prod_url: 'null'
    //     }
    // ]

    if (newsRS) {
        output.success=true
        output.data = newsRS
    } else {
        output.error = '未取得資料'
    }

    return output;
}

async function getEvntsData(req, res) {
    const output = {
        success: false,
        error: '',
        data: [],
    };

    const evnts_sql = `SELECT * FROM evnts`;
    const [evntsRS] = await db.query(evnts_sql);
    // console.log('evntsRS:', evntsRS)

    // SQL
    // [
    //     {
    //         evnts_id: 1,
    //         evnts_title: '試吃餐會',
    //         evnts_cate: '品牌推廣',
    //         evnts_pres_num: 18,
    //         evnts_max_num: 20,
    //         evnts_signup_start_date: 2022 - 01 - 31T16: 00: 00.000Z,
    //         evnts_signup_end_date: 2022 - 04 - 29T16: 00: 00.000Z,
    //         evnts_date: 2022 - 05 - 19T16: 00: 00.000Z,
    //         evnts_start_time: '13:00:00',
    //         evnts_end_time: '17:00:00',
    //         evnts_location: '台北市大安區復興南路一段390號2樓',
    //         evnts_host: 'null',
    //         evnts_detail: '有吃過3D列印食物嗎? 快來參加PRIMEAL舉辦的試吃餐會，帶你認識3D列印食物的過程，試吃體驗全新不同的飲食口感。',
    //         evnts_upload_date: 2022 - 01 - 24T16: 00: 00.000Z,
    //         evnts_edit_datetime: 2022 - 03 - 31T00: 00: 00.000Z,
    //         evnts_img_path: 'event-1.png'
    //     }
    // ]

    if (evntsRS) {
        output.success=true
        output.data = evntsRS
    } else {
        output.error = '未取得資料'
    }
    return output;
}

async function getNewsDetail(req, res) {
    const output = {
        success: false,
        error: '',
        data: [],
    };
    let id = parseInt(req.params.id);

    const newsD_sql = `SELECT * FROM news WHERE news_id=${id}`;
    const [newsD] = await db.query(newsD_sql);
    console.log('newsD:', newsD)
    
    if (newsD) {
        output.success=true
        output.data = newsD
    } else {
        output.error = '未取得資料'
    }
    return output;
}

async function getEvntsDetail(req, res) {
    const output = {
        success: false,
        error: '',
        data: [],
    };
    let id = parseInt(req.params.id);

    const evntsD_sql = `SELECT * FROM evnts WHERE evnts_id=${id}`;
    const [evntsD] = await db.query(evntsD_sql);
    console.log('evntsD:', evntsD)
    
    if (evntsD) {
        output.success=true
        output.data = evntsD
    } else {
        output.error = '未取得資料'
    }
    return output;
}

async function setSignUp(req, res) {
    const output = {
        success: false,
        error: '',
        result:'',
    };
    // {
    //     evnts_id: '1',
    //     name: 'hihi',
    //     mobile: '0988-777-666',
    //     c: 'apple@test.com',
    //     number: '1',
    //     comment: '',
    //     mem_id: 1
    //   }
    const evnts_id = req.body.evnts_id;
    const singUpN = parseInt(req.body.number)
    const n_sql = `SELECT evnts_pres_num, evnts_max_num FROM evnts WHERE evnts_id = ${evnts_id}`
    const [numberRS] = await db.query(n_sql);
    // console.log(numberRS)
    // [ { evnts_pres_num: 18, evnts_max_num: 20 } ]
    const presN = parseInt(numberRS[0].evnts_pres_num)
    const maxN = parseInt(numberRS[0].evnts_max_num)
    const newN = singUpN + presN;
    
    if (singUpN <= maxN - presN) {
        // 寫進報名資料
        const signup_sql = "INSERT INTO `evnts_signup`(`evnts_id`, `mem_id`, `evnts_signup_name`, `evnts_signup_mobile`, `evnts_signup_email`, `evnts_signup_number`, `evnts_signup_comment`, `evnts_signup_datetime`) VALUES (?,?,?,?,?,?,?,NOW())";
        const [signupRS] = await db.query(signup_sql, [
            evnts_id,
            req.body.mem_id,
            req.body.name,
            req.body.mobile,
            req.body.email,
            singUpN,
            req.body.comment || null,
        ])
        // 更新evnts的目前報名人數
        const update_sql = `UPDATE evnts SET evnts_pres_num = ${newN} WHERE evnts_id = ${evnts_id}`
        const [updateRS] = await db.query(update_sql)

        // 回傳寫入報名結果給前端
        // console.log(signupRS)
        output.success = !!signupRS.affectedRows;
        output.result = signupRS.affectedRows;
    } else {
        output.error = '報名人數超過可報名人數'
    }
    return output;
}

router.get('/news', async(req, res) => {
    res.json(await getNewsData(req, res))
})

router.get('/evnts', async(req, res) => {
    res.json(await getEvntsData(req, res))
})

router.get('/newsdetail/:id', async(req, res) => {
    res.json(await getNewsDetail(req, res))
})

router.get('/evntsdetail/:id', async(req, res) => {
    res.json(await getEvntsDetail(req, res))
})

router.post('/signup', async(req, res) => {
    res.json(await setSignUp(req, res))
})




module.exports = router;