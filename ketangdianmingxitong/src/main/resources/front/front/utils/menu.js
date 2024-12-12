const menu = {
    list() {
        return [
    {
        "backMenu":[
        ],
        "frontMenu":[
        ],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    },
    {
        "backMenu":[
			{
                "child":[
                    {
                        "buttons":[
                            "查看",
                        ],
                        "menu":"课程信息",
                        "menuJump":"列表",
                        "tableName":"kecheng"
                    }
                ],
                "menu":"课程信息"
            }
            ,
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"课程收藏管理",
                        "menuJump":"列表",
                        "tableName":"kechengCollection"
                    }
                ],
                "menu":"我的课程收藏"
            }
            ,
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"课程留言信息",
                        "menuJump":"列表",
                        "tableName":"kechengLiuyan"
                    }
                ],
                "menu":"我的课程留言信息"
            }
			,
			{
                "child":[
                    {
                        "buttons":[
                            "查看",
                        ],
                        "menu":"课程考勤",
                        "menuJump":"列表",
                        "tableName":"kechengkaoqin"
                    }
                ],
                "menu":"课程考勤"
            }
            ,
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公告信息管理",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"公告信息"
            }
        ],
        "frontMenu":[
        ],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"是",
        "hasFrontRegister":"是",
        "roleName":"用户",
        "tableName":"yonghu"
    }
]

	}
}
export default menu;