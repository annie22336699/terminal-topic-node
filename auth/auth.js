console.log(process.env.NODE_ENV);
require("dotenv").config();
const express = require("express");
const multer = require("multer");
const session = require("express-session");
const MysqlStore = require("express-mysql-session")(session);
const moment = require("moment-timezone");
const jwt = require('jsonwebtoken');

//會員登入驗證
exports.isToken=(async(req, res, next)=>{
    res.locals.auth = null//自訂的變數, 設定有沒有身分驗證 ,預設值為null
    let auth = req.get('Authorization');

    if(auth && auth.indexOf('Bearer ') === 0){
        auth = auth.slice(7);
        const payload = jwt.verify(auth, process.env.JWT_KEY);
        res.locals.auth = payload;
        
    }else {
        return res.json('您尚未登入')
    }
    next();
});