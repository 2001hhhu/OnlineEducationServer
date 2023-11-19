const mongoose = require('mongoose')
// 创建文档的结构对象
// 设置集合中文档的属性以及属性值的类型
let LearnSchema = new mongoose.Schema({
    id: Number,
    user: Number,
    courseId: Number,
    course: String,
    sum: Number,
    completion: Number,
    incompletion: Number
})

// 创建模型对象 对文档操作的封装
let LearnModel = mongoose.model('user', LearnSchema)

// 暴露模型对象
module.exports = LearnModel