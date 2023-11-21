let express = require('express');
let router = express.Router();

// 导入userModel
const UserModel = require('../../models/UserModel')

/* GET home page. */
router.get('/user', function(req, res, next) {
  const _res = UserModel.find().sort({id:1})
  console.log(_res)
  
  // .then((_res,data) => {
  //   console.log(_res)
  //   res.json({
  //     code: '0000',
  //     msg: '读取成功',
  //     data: data
  //   })
  // }).catch(err => {
  //   if(err){
  //     console.log(err)
  //     res.json({
  //       code: '1001',
  //       msg: '读取失败',
  //       data: null
  //     })
  //   }
  // })
  // 响应成功
  
  
});

module.exports = router;
