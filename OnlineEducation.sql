/*
 Navicat Premium Data Transfer

 Source Server         : host27017
 Source Server Type    : MongoDB
 Source Server Version : 60011
 Source Host           : localhost:27017
 Source Schema         : OnlineEducation

 Target Server Type    : MongoDB
 Target Server Version : 60011
 File Encoding         : 65001

 Date: 19/11/2023 23:08:51
*/


// ----------------------------
// Collection structure for category
// ----------------------------
db.getCollection("category").drop();
db.createCollection("category",{
    validator: {
        $jsonSchema: {
            properties: {
                category: {
                    bsonType: "string"
                }
            },
            required: [
                "category"
            ]
        }
    }
});

// ----------------------------
// Documents of category
// ----------------------------
db.getCollection("category").insert([ {
    _id: ObjectId("655a20226947000002004353"),
    category: "全部"
} ]);
db.getCollection("category").insert([ {
    _id: ObjectId("655a202f6947000002004354"),
    category: "工科"
} ]);
db.getCollection("category").insert([ {
    _id: ObjectId("655a20386947000002004355"),
    category: "理科"
} ]);
db.getCollection("category").insert([ {
    _id: ObjectId("655a203f6947000002004356"),
    category: "文学"
} ]);
db.getCollection("category").insert([ {
    _id: ObjectId("655a20446947000002004357"),
    category: "音乐与艺术"
} ]);
db.getCollection("category").insert([ {
    _id: ObjectId("655a204d6947000002004358"),
    category: "心理学"
} ]);
db.getCollection("category").insert([ {
    _id: ObjectId("655a20526947000002004359"),
    category: "医学"
} ]);
db.getCollection("category").insert([ {
    _id: ObjectId("655a2057694700000200435a"),
    category: "外语"
} ]);
db.getCollection("category").insert([ {
    _id: ObjectId("655a205b694700000200435b"),
    category: "历史与政治"
} ]);

// ----------------------------
// Collection structure for courselist
// ----------------------------
db.getCollection("courselist").drop();
db.createCollection("courselist",{
    validator: {
        $jsonSchema: {
            properties: {
                id: {
                    bsonType: "number",
                    description: "课程的ID"
                },
                url: {
                    bsonType: "string",
                    description: "课程的封面"
                },
                name: {
                    bsonType: "string",
                    description: "课程的名字"
                },
                lecturer: {
                    bsonType: "string",
                    description: "课程主讲人"
                },
                participants: {
                    bsonType: "number",
                    description: "课程的参加人数"
                },
                hour: {
                    bsonType: "number",
                    description: "课程的学时"
                },
                credit: {
                    bsonType: "number",
                    description: "课程的学分"
                },
                chapter: {
                    bsonType: "array",
                    description: "课程的章节"
                },
                term: {
                    bsonType: "string",
                    description: "课程的学期"
                },
                category: {
                    bsonType: "string",
                    description: "课程的分类"
                },
                state: {
                    bsonType: "string",
                    description: "课程的状态"
                }
            },
            required: [
                "id",
                "url",
                "name",
                "lecturer",
                "participants",
                "hour",
                "credit",
                "chapter",
                "term",
                "category",
                "state"
            ]
        }
    },
    validationLevel: "strict",
    validationAction: "error"
});

// ----------------------------
// Documents of courselist
// ----------------------------
db.getCollection("courselist").insert([ {
    _id: ObjectId("6559b5dc870500000a005967"),
    id: 1,
    url: "/images/course/course-photo-2.png",
    name: "计算机网络",
    lecturer: "蔡老师",
    hour: 32,
    credit: 2,
    chapter: [
        {
            id: 1,
            name: "概述",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 2,
            name: "物理层",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 3,
            name: "数据链路层",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 4,
            name: "网络层",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 5,
            name: "运输层",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 6,
            name: "应用层",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 7,
            name: "网络安全",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        }
    ],
    term: "2021-2022学年 第一学期",
    category: "工科",
    state: "开课中",
    participants: 30
} ]);
db.getCollection("courselist").insert([ {
    _id: ObjectId("655a0ff96947000002004343"),
    id: 2,
    url: "/images/course/course-photo-1.jpg",
    name: "数据结构与算法",
    lecturer: "陈老师",
    participants: 65,
    hour: 48,
    credit: 4,
    chapter: [
        {
            id: 1,
            name: "概述",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 2,
            name: "线性表",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 3,
            name: "栈和队列",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 4,
            name: "串",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 5,
            name: "树与二叉树",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 6,
            name: "图",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 7,
            name: "查找",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 8,
            name: "排序",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        }
    ],
    term: "2021-2022学年 第一学期",
    category: "工科",
    state: "开课中"
} ]);
db.getCollection("courselist").insert([ {
    _id: ObjectId("655a10286947000002004344"),
    id: 3,
    url: "/images/course/course-photo-3.jpg",
    name: "高等数学",
    lecturer: "陈老师",
    participants: 89,
    hour: 64,
    credit: 4,
    chapter: [
        {
            id: 1,
            name: "概述",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 2,
            name: "函数与极限",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 3,
            name: "导数与微分",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 4,
            name: "微分中值定理与导数的应用",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 5,
            name: "不定积分",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 6,
            name: "定积分",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 7,
            name: "定积分的应用",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 8,
            name: "微分方程序",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        }
    ],
    term: "2021-2022学年 第一学期",
    category: "工科",
    state: "开课中"
} ]);
db.getCollection("courselist").insert([ {
    _id: ObjectId("655a103d6947000002004345"),
    id: 4,
    url: "/images/course/course-photo-3.jpg",
    name: "大学物理",
    lecturer: "陈老师",
    participants: 77,
    hour: 64,
    credit: 4,
    chapter: [
        {
            id: 1,
            name: "质点运动学",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 2,
            name: "质点动力学",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 3,
            name: "刚体的定轴运动",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 4,
            name: "气体动理论",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 5,
            name: "热力学基础",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 6,
            name: "静电场",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 7,
            name: "稳恒磁场",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 8,
            name: "电磁感应",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 9,
            name: "振动学基础",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        }
    ],
    term: "2021-2022学年 第一学期",
    category: "工科",
    state: "即将开课"
} ]);
db.getCollection("courselist").insert([ {
    _id: ObjectId("655a104b6947000002004346"),
    id: 5,
    url: "/images/course/course-photo-3.jpg",
    name: "智能系统",
    lecturer: "江老师",
    participants: 77,
    hour: 64,
    credit: 4,
    chapter: [
        {
            id: 1,
            name: "绪论",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 2,
            name: "知识表示方法",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 3,
            name: "搜索推理技术",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 4,
            name: "计算智能",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 5,
            name: "专家系统",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 6,
            name: "机器学习",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 7,
            name: "智能规划",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 8,
            name: "自然语言理解",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        }
    ],
    term: "2021-2022学年 第二学期",
    category: "工科",
    state: "开课中"
} ]);
db.getCollection("courselist").insert([ {
    _id: ObjectId("655a105b6947000002004347"),
    id: 6,
    url: "/images/course/course-photo-3.jpg",
    name: "C语言",
    lecturer: "郑老师",
    participants: 77,
    hour: 64,
    credit: 4,
    chapter: [
        {
            id: 1,
            name: "初识C语言",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 2,
            name: "C语言概述",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 3,
            name: "数据和C",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 4,
            name: "字符串和格式化输入",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 5,
            name: "运算符、表达式和语句",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 6,
            name: "C控制语句: 循环",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 7,
            name: "C控制语句: 分支和跳转",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 8,
            name: "字符输入/输出和输入验证",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 9,
            name: "函数",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 10,
            name: "数组和指针",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        }
    ],
    term: "2021-2022学年 第二学期",
    category: "工科",
    state: "开课中"
} ]);
db.getCollection("courselist").insert([ {
    _id: ObjectId("655a106a6947000002004348"),
    id: 7,
    url: "/images/course/course-photo-3.jpg",
    name: "Java",
    lecturer: "张老师",
    participants: 77,
    hour: 64,
    credit: 4,
    chapter: [
        {
            id: 1,
            name: "Java入门",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 2,
            name: "基本数据类型、数组和枚举",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 3,
            name: "运算符、表达式和语句",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 4,
            name: "类与对象",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 5,
            name: "继承与接口",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 6,
            name: "内部类、匿名类与Lambda表达式、异常类",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 7,
            name: "面向对象设计的基本原则",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 8,
            name: "设计模式",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 9,
            name: "常用实用类",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 10,
            name: "Java Swing",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        }
    ],
    term: "2022-2023学年 第一学期",
    category: "工科",
    state: "已结课"
} ]);
db.getCollection("courselist").insert([ {
    _id: ObjectId("655a10796947000002004349"),
    id: 8,
    url: "/images/course/course-photo-4.jpg",
    name: "道德文化修养",
    lecturer: "黄老师",
    participants: 77,
    hour: 64,
    credit: 4,
    chapter: [
        {
            id: 1,
            name: "绪论",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 2,
            name: "领悟人生真谛 把握人生方向",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 3,
            name: "追求远大理想 坚定崇高信念",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 4,
            name: "继承优良传统 弘扬中国精神",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 5,
            name: "明确价值要求 践行价值准则",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 6,
            name: "遵守道德规范 锤炼道德品格（一）",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 7,
            name: "遵守道德规范 锤炼道德品格（二）",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 8,
            name: "学习法治思想 提升法治素养（一）",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 9,
            name: "学习法治思想 提升法治素养（二）",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        }
    ],
    term: "2022-2023学年 第一学期",
    category: "历史与政治",
    state: "开课中"
} ]);
db.getCollection("courselist").insert([ {
    _id: ObjectId("655a1085694700000200434a"),
    id: 9,
    url: "/images/course/course-photo-5.jpg",
    name: "大自然",
    lecturer: "冯老师",
    participants: 77,
    hour: 64,
    credit: 4,
    chapter: [
        {
            id: 1,
            name: "自然保护的发展与生态危机",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 2,
            name: "自然保护的基础理论",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 3,
            name: "森林与湿地生态保护",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 4,
            name: "草原与荒漠生态保护",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 5,
            name: "水生生态保护",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 6,
            name: "自然资源保护",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 7,
            name: "生物多样性保护",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 8,
            name: "自然保护区",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        }
    ],
    term: "2022-2023学年 第一学期",
    category: "音乐与艺术",
    state: "开课中"
} ]);
db.getCollection("courselist").insert([ {
    _id: ObjectId("655a1096694700000200434b"),
    id: 10,
    url: "/images/course/course-photo-6.jpg",
    name: "ELC4",
    lecturer: "张老师",
    participants: 77,
    hour: 64,
    credit: 4,
    chapter: [
        {
            id: 1,
            name: "Session 1",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 2,
            name: "Session 2",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 3,
            name: "Session 3",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 4,
            name: "Session 4",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 5,
            name: "Session 5",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 6,
            name: "Session 6",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        },
        {
            id: 7,
            name: "Session 7",
            video: "https://media.w3.org/2010/05/sintel/trailer.mp4"
        }
    ],
    term: "2022-2023学年 第一学期",
    category: "外语",
    state: "即将开课"
} ]);

// ----------------------------
// Collection structure for evaluate
// ----------------------------
db.getCollection("evaluate").drop();
db.createCollection("evaluate",{
    validator: {
        $jsonSchema: {
            properties: {
                id: {
                    bsonType: "number"
                },
                user: {
                    bsonType: "number"
                },
                course: {
                    bsonType: "number"
                },
                general: {
                    bsonType: "number"
                },
                comment: {
                    bsonType: "string"
                },
                date: {
                    bsonType: "date"
                }
            },
            required: [
                "id",
                "user",
                "course",
                "general",
                "comment",
                "date"
            ]
        }
    },
    validationLevel: "strict",
    validationAction: "error"
});

// ----------------------------
// Documents of evaluate
// ----------------------------
db.getCollection("evaluate").insert([ {
    _id: ObjectId("655a2472b6640000820040e2"),
    course: 8,
    user: 1,
    general: 3.5,
    comment: "阿斯达啊实打实大时代",
    id: 2,
    date: ISODate("2023-11-19T15:05:59.000Z")
} ]);
db.getCollection("evaluate").insert([ {
    _id: ObjectId("655a247eb6640000820040e3"),
    course: 1,
    user: 1,
    general: 4,
    comment: "OKSADASDAS",
    id: 3,
    date: ISODate("2023-11-19T15:05:59.000Z")
} ]);

// ----------------------------
// Collection structure for learn
// ----------------------------
db.getCollection("learn").drop();
db.createCollection("learn",{
    validator: {
        $jsonSchema: {
            properties: {
                id: {
                    bsonType: "number"
                },
                user: {
                    bsonType: "number"
                },
                courseId: {
                    bsonType: "number"
                },
                course: {
                    bsonType: "string"
                },
                sum: {
                    bsonType: "number"
                },
                completion: {
                    bsonType: "number"
                },
                incompletion: {
                    bsonType: "number"
                }
            },
            required: [
                "id",
                "user",
                "courseId",
                "course",
                "sum",
                "completion",
                "incompletion"
            ]
        }
    }
});

// ----------------------------
// Documents of learn
// ----------------------------
db.getCollection("learn").insert([ {
    _id: ObjectId("655a214b694700000200435d"),
    id: 1,
    user: 1,
    courseId: 1,
    course: "计算机网络",
    sum: 7,
    completion: 3,
    incompletion: 4
} ]);
db.getCollection("learn").insert([ {
    _id: ObjectId("655a2163694700000200435e"),
    id: 2,
    user: 1,
    courseId: 2,
    course: "数据结构与算法",
    sum: 7,
    completion: 3,
    incompletion: 4
} ]);
db.getCollection("learn").insert([ {
    _id: ObjectId("655a2184694700000200435f"),
    id: 3,
    user: 1,
    courseId: 3,
    course: "高等数学",
    sum: 7,
    completion: 3,
    incompletion: 4
} ]);
db.getCollection("learn").insert([ {
    _id: ObjectId("655a219b6947000002004360"),
    id: 4,
    user: 1,
    courseId: 4,
    course: "高等物理",
    sum: 7,
    completion: 3,
    incompletion: 4
} ]);
db.getCollection("learn").insert([ {
    _id: ObjectId("655a21e66947000002004364"),
    user: 1,
    id: 5,
    course: "智能系统",
    courseId: 5,
    completion: 3,
    incompletion: 4,
    sum: 7
} ]);
db.getCollection("learn").insert([ {
    _id: ObjectId("655a22096947000002004365"),
    user: 1,
    id: 6,
    course: "C语言",
    courseId: 6,
    completion: 3,
    incompletion: 4,
    sum: 7
} ]);
db.getCollection("learn").insert([ {
    _id: ObjectId("655a221d6947000002004366"),
    user: 1,
    id: 7,
    course: "Java",
    courseId: 7,
    completion: 3,
    incompletion: 4,
    sum: 7
} ]);
db.getCollection("learn").insert([ {
    _id: ObjectId("655a22306947000002004367"),
    user: 1,
    id: 8,
    course: "道德文化修养",
    courseId: 8,
    completion: 3,
    incompletion: 4,
    sum: 7
} ]);
db.getCollection("learn").insert([ {
    _id: ObjectId("655a22406947000002004368"),
    user: 1,
    id: 9,
    course: "大自然",
    courseId: 9,
    completion: 3,
    incompletion: 4,
    sum: 7
} ]);
db.getCollection("learn").insert([ {
    _id: ObjectId("655a22526947000002004369"),
    user: 1,
    id: 10,
    course: "ELC4",
    courseId: 10,
    completion: 3,
    incompletion: 4,
    sum: 7
} ]);

// ----------------------------
// Collection structure for user
// ----------------------------
db.getCollection("user").drop();
db.createCollection("user",{
    validator: {
        $jsonSchema: {
            properties: {
                id: {
                    bsonType: "number",
                    description: "用户账号的ID"
                },
                username: {
                    bsonType: "string",
                    description: "用户的账号"
                },
                password: {
                    bsonType: "string",
                    description: "用户账号的密码"
                }
            },
            required: [
                "id",
                "username",
                "password"
            ]
        }
    }
});

// ----------------------------
// Documents of user
// ----------------------------
db.getCollection("user").insert([ {
    _id: ObjectId("6559b342870500000a005963"),
    id: 1,
    username: "admin",
    password: "123456"
} ]);

// ----------------------------
// Collection structure for userInfo
// ----------------------------
db.getCollection("userInfo").drop();
db.createCollection("userInfo",{
    validator: {
        $jsonSchema: {
            properties: {
                id: {
                    bsonType: "number"
                },
                avatar: {
                    bsonType: "string"
                },
                username: {
                    bsonType: "string"
                },
                password: {
                    bsonType: "number"
                },
                nickname: {
                    bsonType: "string"
                },
                name: {
                    bsonType: "string"
                },
                phone: {
                    bsonType: "number"
                },
                email: {
                    bsonType: "string"
                },
                IP: {
                    bsonType: "string"
                },
                schoole: {
                    bsonType: "string"
                },
                grade: {
                    bsonType: "string"
                },
                speciality: {
                    bsonType: "string"
                },
                colleage: {
                    bsonType: "string"
                },
                address: {
                    bsonType: "string"
                },
                gender: {
                    bsonType: "number"
                },
                registration: {
                    bsonType: "date"
                },
                history: {
                    bsonType: "array"
                },
                weekDuration: {
                    bsonType: "array"
                },
                monthDuration: {
                    bsonType: "array"
                },
                yearDuration: {
                    bsonType: "array"
                },
                sumDuration: {
                    bsonType: "number"
                },
                keep: {
                    bsonType: "number"
                }
            },
            required: [
                "id",
                "avatar",
                "username",
                "password",
                "nickname",
                "name",
                "IP",
                "schoole",
                "grade",
                "speciality",
                "colleage",
                "gender",
                "registration"
            ]
        }
    },
    validationLevel: "strict",
    validationAction: "error"
});

// ----------------------------
// Documents of userInfo
// ----------------------------
db.getCollection("userInfo").insert([ {
    _id: ObjectId("655a1f856947000002004352"),
    id: 1,
    avatar: "1",
    username: "2001hhhu",
    password: 123456,
    nickname: "花呗鳄鱼",
    name: "hhh",
    phone: 13612345678,
    email: "2548098501@qq.com",
    IP: "广东",
    schoole: "STU",
    grade: "2020",
    speciality: "计算机科学与技术",
    colleage: "工学院",
    gender: 1,
    registration: ISODate("2023-11-19T14:36:03.000Z"),
    history: [
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7"
    ],
    weekDuration: [
        8,
        8,
        8,
        8,
        8,
        8,
        8
    ],
    monthDuration: [
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8
    ],
    yearDuration: [
        248,
        216,
        248,
        240,
        248,
        240,
        248,
        248,
        240,
        248,
        240,
        248
    ],
    sumDuration: 2920,
    keep: 365,
    school: ""
} ]);
