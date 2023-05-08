### 1. launch from terminal
- Command + Shift + P
- Shell Command: Install 'code' command in PATH
### 2. User Snippets
- python
~~~json
{
    // Place your snippets for python here. Each snippet is defined under a snippet name and has a prefix, body and 
    // description. The prefix is what is used to trigger the snippet and the body will be expanded and inserted. Possible variables are:
    // $1, $2 for tab stops, $0 for the final cursor position, and ${1:label}, ${2:another} for placeholders. Placeholders with the 
    // same ids are connected.
    // Example:
    // "Print to console": {
    // 	"prefix": "log",
    // 	"body": [
    // 		"console.log('$1');",
    // 		"$2"
    // 	],
    // 	"description": "Log output to console"
    // }
    "header": {
        "prefix": "header",
        "body": [
            "# -*- coding: utf-8 -*-",
            "\"\"\"",
            "@author: gehipeng @ ${CURRENT_YEAR}${CURRENT_MONTH}${CURRENT_DATE}", 
            "@file: ${TM_FILENAME}", 
            "@brief: ${TM_FILENAME_BASE}",
            "\"\"\""
        ]
    },
    "main": {
        "prefix": "main-prefix",
        "body": [
            "if __name__ == \"__main__\":",
            "\t$1"
        ]
    }
}
~~~

- cpp
~~~json
{
    // Place your snippets for cpp here. Each snippet is defined under a snippet name and has a prefix, body and 
    // description. The prefix is what is used to trigger the snippet and the body will be expanded and inserted. Possible variables are:
    // $1, $2 for tab stops, $0 for the final cursor position, and ${1:label}, ${2:another} for placeholders. Placeholders with the 
    // same ids are connected.
    // Example:
    // "Print to console": {
    // 	"prefix": "log",
    // 	"body": [
    // 		"console.log('$1');",
    // 		"$2"
    // 	],
    // 	"description": "Log output to console"
    // }

    "header-personal": {
        "prefix": "header-gzp",
        "body": [
            "// @author: gezhipeng @ ${CURRENT_YEAR}${CURRENT_MONTH}${CURRENT_DATE}", 
            "// @file: ${TM_FILENAME}", 
            "// @brief: ${TM_FILENAME_BASE}"
        ]
    },

    "namespace-comment": {
        "prefix": "namespace-comment",
        "body": [
            "namespace $1 {",
            "\t$2",
            "}  // namespace $1"
        ]
    },

    "ifndef": {
        "prefix": "ifndef",
        "body": [
            "#ifndef ${RELATIVE_FILEPATH/([a-zA-Z0-9]+)([\\/\\.-_])?/${1:/upcase}_/g}",
            "#define ${RELATIVE_FILEPATH/([a-zA-Z0-9]+)([\\/\\.-_])?/${1:/upcase}_/g}",
            "$1",
            "#endif  // ${RELATIVE_FILEPATH/([a-zA-Z0-9]+)([\\/\\.-_])?/${1:/upcase}_/g}"
        ]
    },
}
~~~  
