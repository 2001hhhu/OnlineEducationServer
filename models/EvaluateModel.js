const mongoose = require('mongoose')
// 创建文档的结构对象
// 设置集合中文档的属性以及属性值的类型
let EvaluateSchema = new mongoose.Schema({
    id: Number,
    user: Number,
    course: Number,
    general: Number,
    comment: String,
    date: Date
})

// 创建模型对象 对文档操作的封装
let EvaluateModel = mongoose.model('user', EvaluateSchema)

// 暴露模型对象
module.exports = EvaluateModel