/**
 * 
 * @param {*} success 数据库连接成功的回调
 * @param {*} err 数据库连接失败的回调
 */
module.exports = function (success, err) {
  if(typeof error !== 'function'){
    err = () => {
        console.log('连接失败')
    }
  }
  // 导入mongoose
  const mongoose = require('mongoose')
  mongoose.set('strictQuery', true)
  // 连接 mongodb服务
  const {DBHOST, DBPORT, DBNAME} = require('../config/config')

  // const mongoDB =  `mongodb://${DBHOST}:${DBPORT}/${DBNAME}`
  const mongoDB =  'mongodb://127.0.0.1:27017/OnlineEducation'
  console.log(mongoDB)

  /**
   * useNewUrlParser: true,  // 避免“不建议使用当前URL字符串解析器”
    useCreateIndex: true,  // 解决MongoDB弃用警告
    useUnifiedTopology: true,  // 解决连接报错问题
    useFindAndModify: false 
   */
  mongoose.connect(mongoDB)
  
  // 设置成功回调
  const db = mongoose.connection

  db.once('open', () => {
    console.log('连接成功')
    success()
  })
  
  db.once('error', () => {
    console.log('连接失败')
  })
  
  db.once('close', () => {
      console.log('连接关闭')
  })
  
}
