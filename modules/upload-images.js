const multer = require("multer");
const {v4: uuidv4} = require('uuid');

const extMap = {
    'image/jpeg':'.jpg',
    'image/png':'.png',
    'image/gif':'.gif',

};

//設定照片存放的地方
const storage = multer.diskStorage({
    destination: (req, file, cb)=> {
        //檔案符合格式時，觸發 cb() 函式，帶入 true 值
        cb(null, __dirname + '/../public/img/member')
    },
    filename: (req,file,cb)=> {
        cb(null, uuidv4() + extMap[file.mimetype]);
    }
})

const fileFilter = (req, file, cb) => {
    cb(null, !!extMap[file.mimetype]);
};

module.exports = multer({storage, fileFilter});//先過fileFilter過濾完確定是要得才會進storage