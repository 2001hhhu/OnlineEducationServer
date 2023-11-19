const mongoose = require('mongoose')
// 创建文档的结构对象
// 设置集合中文档的属性以及属性值的类型
let CourseListSchema = new mongoose.Schema({
    id: Number,
    url: String,
    name: String,
    lecturer: String,
    participants: Number,
    hour: Number,
    credit: Number,
    chapter: Array,
    term: String,
    category: String,
    state: String
})

// 创建模型对象 对文档操作的封装
let CourseListModel = mongoose.model('user', CourseListSchema)

// 暴露模型对象
module.exports = CourseListModel