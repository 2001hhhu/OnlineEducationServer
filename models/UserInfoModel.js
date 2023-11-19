const mongoose = require('mongoose')
// 创建文档的结构对象
// 设置集合中文档的属性以及属性值的类型
let UserInfoSchema = new mongoose.Schema({
    id: Number,
    username: String,
    password: Number,
    nickname: String,
    name: String,
    phone: Number,
    email: String,
    IP: String,
    school: String,
    grade: String,
    speciality: String,
    colleage: String,
    address: String,
    gender: Number,
    registration: Date,
    history: Array,
    weekDuration: Array,
    monthDuration: Array,
    yearDuration: Array,
    sumDuration: Number,
    keep: Number
})

// 创建模型对象 对文档操作的封装
let UserInfoModel = mongoose.model('user', UserInfoSchema)

// 暴露模型对象
module.exports = UserInfoModel