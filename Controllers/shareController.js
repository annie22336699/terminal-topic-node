const db = require('./../modules/connect-db');

exports.getShareItems = async (req, res, next) => {
  const output = {
    status: 'fail',
    message: '',
    results: '',
    data: [],
  };

  console.log(req.body.user);
  const getItemsSql = `SELECT * FROM share_item item JOIN ( SELECT share_img_id,share_imgPath from share_img img WHERE share_img_order = 1) fi ON item.share_img_id = fi.share_img_id ORDER BY RAND() LIMIT 10;`;
  const getUserSavesSql = `SELECT share_item_id FROM share_save WHERE member_id = 1`;
  const getImgsSql = `SELECT share_item_id FROM share_save WHERE member_id = 1`;

  const [rsItem] = await db.query(getItemsSql);
  const [rsUser] = await db.query(getUserSavesSql);

  const itemsHasSaved = rsItem.map((item) => {
    const matchItem = rsUser.find(
      (saveItem) => item.share_item_id === saveItem.share_item_id
    );
    if (matchItem) {
      item.isSaved = true;
      return item;
    }
    return item;
  });

  // console.log(rsUser);
  if (rsItem.length === 0) {
    output.message = 'No data found';

    res.status(404).json(output);
  }

  output.status = 'success';
  output.results = itemsHasSaved.length;
  output.data = itemsHasSaved;
  res.status(200).json(output);
};
