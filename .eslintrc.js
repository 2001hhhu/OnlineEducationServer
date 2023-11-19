module.exports = {
    "env": {
        "browser": true,
        "commonjs": true,
        "es5": true
    },
    "extends": "eslint:recommended",
    "overrides": [
        {
            "env": {
                "node": true
            },
            "files": [
                ".eslintrc.{js,cjs}"
            ],
            "parserOptions": {
                "sourceType": "script"
            }
        }
    ],
    "parserOptions": {
        "ecmaVersion": "latest"
    },
    "rules": {
        'prettier/prettier': [
            'warn',
            {
              singleQuote: true, // 单引号
              semi: false, // 无分号
              printWidth: 80, // 每行宽度至多90字符
              trailingComma: 'none', // 不加对象|数组最后逗号
              endOfLine: 'auto' // 换行符号不限制（win mac 不一致）
            }
          ]
    }
}
