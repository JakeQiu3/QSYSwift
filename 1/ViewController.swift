//
//  ViewController.swift
//  1
//
//  Created by 邱少依 on 16/9/6.
//  Copyright © 2016年 QSY. All rights reserved.
//
// 1.搜索： 遗弃
//2. 规则：声明多了变量和常量 + 书写间隔 + .语法 + 舍弃 ; +
import UIKit
struct Blog {
    let name: String?
    let URL: String?
    let Author: String?
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let str: String = "Hello World"
        //       swift 打印
        print("\n",str,26,str,"Hello",terminator:"\n")
        print("\n",26,39,"我就是测一测", separator: "->", terminator: "我是邱少\n");
        
        //       Indentifier
        self.logIndentifier("标识符")
        
        //      keyword
        self.logKeyword("测试关键字")// __FUNCTION__ 已被遗弃，用 #function
        //      constant 和 variation 使用
        self.logConstantAndVariation("常量和变量")
        //      Connective
        self.logConnective("运算符")
        //     dataType
        self.dataType("数据类型")
        //     测试有返回值的 func
        if let result: Double = self.divide000(100, n2: 0) {
            print(result)
        } else { print("操作失败,若不if,直接let会崩掉") }
        //     串的操作
        self.logString("字符串的操作")
        //     关键字的使用
        self.logKeyworUse("关键字的使用")
        //        数组、字典和集合
        self.logArrAndDic("数组、字典和集合")
        
        
    }
    
    func logIndentifier(message: String) -> Void {
        let π = 33.1415926
        let _Hello = "hello"
        let 你好 = "你好世界"
        let `class` = "😄😊😃😉"
        let 🌍 = "🐶🐺🐱🐭🐹🐰🐸🐯🐨🐻🐷🐽🐮🐗🐵🐒🐴🐑🐘🐼🐧🐦🐤🐥🐣🐔🐍🐢🐛🐝🐜🐞🐌🐙🐚🐠🐟🐬🐳🐋🐄🐏🐀🐃🐅🐇🐉🐎🐐🐓🐕🐖🐁🐂🐲🐡🐊🐫🐪🐆🐈🐩"
        print("\n",π,_Hello,你好,`class`,🌍)
    }
    
    func logKeyword(message: String) -> Void {
        print("\n",(message:"FUNCTION:\(#function) COLUMN:\(#column) FILE:\(#file) LINE:\(#line)", separator: "->", terminator: "\n一切都会结束,代码也不例外"))
    }
    
    func logConstantAndVariation(message: String) -> Void {
        let _qsy = "邱少" // 常量
        var x = 10, y = 20 //变量
        x += 1
        y += 2
        print("\n",_qsy,x,y)
        //      异常情况
        class Person: NSObject {
            var name : String
            var age : Int
            init(name : String, age : Int) {
                self.name = name
                self.age = age
            }
            let p1 = Person (name: "Tony", age: 18 )
            //        p1.name = "tony"
            //        p1.age = 20 //编译错误
        }
        /* 注释1 */
        /* 注释2
         注释2
         注释2 */
    }
    
    func logConnective(message : String) -> Void {
        //      一元运算符
        var a = 12
        a += 2// ++ -- 已被遗弃,用 a += 1, a -= 2
        var b = a
        print("\n",-a,b)
        //      二元运算符
        var intResult = 1+2 // 10.0 为浮点型
        intResult = intResult - 1
        intResult = intResult * 2
        intResult = intResult / 2
        intResult = intResult + 8
        intResult = intResult % 7
        print("\n",intResult)
        //       算术赋值运算符
        var c = 10,d = 12
        c += d
        c -= d
        c *= d
        c /= d
        c %= d
        print("\n",c)
        
        //       关系运算符
        if c == d {
        }
        if c != d {
        }
        if c >= d {
        }
        if c <= d {
        }
        
        //        逻辑运算符:或且非
        if (a > b) || (c != d) {
            
        } else if (a != b) && (c > d) {
            
        }
        //        混合运算符
        let score : UInt16 = 80
        let result = score > 60 ? "及格" : "不及格"
        
        var arr = [89,37,12,57]
        var airports = ["BJ" : "beijing", "NJ" : "nanjing"]
        print(result,arr[2],airports["BJ"])
    }
    
    func dataType(message : String) -> Void {
        print("UInt8 range: \(UInt8.min) ~ \(UInt8.max)")
        
        print("Int8 range: \(Int8.min) ~ \(Int8.max)")
        
        print("UInt range: \(UInt.min) ~ \(UInt.max)")
        
        print("UInt64 range: \(UInt64.min) ~ \(UInt64.max)")
        
        print("Int64 range: \(Int64.min) ~ \(Int64.max)")
        
        print("Int range: \(Int.min) ~ \(Int.max)")
        
        var int1 : Int = 30
        var doubleName : Double = 300.8
        var myMoney : Float = 111.0
        let pi = 3.1515
        var hhh = 3.36e2
        var interestRate = 1.56e-2
        var myMon = 3_360_000
        var interRateH = 000.015678
        
        //        类型转换:保证安全和正确
        let  historyScore :UInt8 = 90
        let  englishScore : UInt16 = 130
        let  testFloat: Float = 28.9
        var is🐴 = true
        var is🐻 : Bool = false
        var student1 = ("100" , "张三" , 80 , 90)
        var student3 = (id:"1002", name:"李四", chinese_score:32, math_score:80)
        var student2 :Array = ["woj","huduys",80,37]
        var student4 : Dictionary = ["name" : "woj","test" : "huduys","id" : 80,"score" : 37]
        
        
        
        let totalScore16 = UInt16(historyScore) + englishScore
        let totalScore8 = historyScore + UInt8(englishScore)
        let totalScoreF16 = UInt16(testFloat) + englishScore  //正确，小数直接被被截掉
        if is🐴 {
            print("是的，它是马")
        } else {
            print("不，它是熊")
        }
        print("学生:\(student1.1) 学号:\(student1.0) 语文:\(student1.2) 数学:\(student1.3)")
        print("学生:\(student3.name) 学号:\(student3.id) 语文:\(student3.chinese_score) 数学:\(student3.math_score)")
        //   var str : String = nil  let n1 : Int = nil 基本或字符串均不允许分配为nil
        //   int?型可以为null
        var n1 : Int? = 100
        print(n1! + 100)
        
        var n2: Int! = 100
        print(n2! + 100)
        
    }
    
    func divide000(n1: Int, n2: Int) -> Double? {
        if n2 == 0 {
            return nil
        }
        return Double(n1)/Double(n2)
    }
    
    func logString(message: String) -> Void {
        //   Unicode编码
        let addSign1: Character = "&"
        let addSign2: Character = "\u{26}"// 同上
        let simile1: Character = "😃"
        let simile2: Character = "\u{0001f603}"// 同上
        print(addSign1,addSign2,simile1,simile2)
        //        串内串
        let specialCharReturn1 = "Hello\tWorld"
        let specialCharReturn2 = "Hello\"World\""
        let specialCharReturn3 = "Hello\'World\'"
        print(specialCharReturn1,specialCharReturn2,specialCharReturn3,"\"\"\'\'")
        //        空串
        let emptyString1: String = ""
        let emptyString2: String = String()
        emptyString1.characters.count > 0
        //        串拼接
        var 🌍 = "🐶🐺🐱🐭🐹🐰🐸🐯🐨🐻🐷🐽🐮🐗🐵🐒🐴🐑🐘🐼🐧🐦🐤🐥🐣🐔🐍🐢🐛🐝🐜🐞🐌🐙🐚🐠🐟🐬🐳🐋🐄🐏🐀🐃🐅🐇🐉🐎🐐🐓🐕🐖🐁🐂🐲🐡🐊🐫🐪🐆🐈🐩"
        🌍 = 🌍 + "wojiucexia"
        //        串内的变量和逻辑运算
        let number = 9
        let total = "\(number)加上 10 等于\(Double (number) + 10)"
        
        //        串 增删改查
        var newStr = "我就是策划一下"
        let flower: Character = "🌻"// Character 单字符
        newStr.append(flower)
        newStr  = newStr + 🌍
        newStr.insert("9", atIndex: newStr.endIndex)
        print("增的newStr为:\(newStr)")
        
        newStr.removeAtIndex(newStr.endIndex.predecessor())
        var rmStartIndex = newStr.startIndex
        var rmEndIndex = rmStartIndex.advancedBy(9)// [0 9]的闭区间移除
        var rmRange = rmStartIndex...rmEndIndex
        newStr.removeRange(rmRange)
        print("删后的newStr为:\(newStr)")
        
        var replaceStart = newStr.startIndex
        var relpaceEnd = replaceStart.advancedBy(0)
        var replaceRange = replaceStart...relpaceEnd
        newStr.replaceRange(replaceRange, with: "邱少依")
        
        print("改后的newStr为:\(newStr)")
        
        //     串大小比较
        let 熊 = "🐻"
        let 猫 = "🐱"
        let 🐼 = 熊 + 猫
        if (熊 > 猫) && (🐼 == "🐻🐱")  {
            print("\(熊) 大于 \(猫),🐼 是 🐻🐱")
        } else {
            print("\(熊) 小于 \(猫)")
        }
        let emptyString3 = ""
        let emptyString4 = String()
        if emptyString3 == emptyString4 {
            print("相等")
        } else {
            print("竟然不等")
        }
        
        //        前后缀比较
        熊.hasPrefix("邱")
        猫.hasSuffix("依")
        let lowerCaseDoc = 🐼.lowercaseString
    }
    
    func logKeyworUse(message: String) -> Void {
        let a = 100
        let b = 77
        //        if
        if a>b {
            print("if:我觉得a大于b应该没有意义吧")
        } else {
            print("你说得很对，当我绝对必想自己")
        }
        
        //        guard
        guard a > b else {
            print("guard:我觉得a大于b应该没有意义吧")
        }
        print("guard:你说得很对，当我绝对必想自己")
        
        //        switch
        let testScoreTotal = 86
        var grade: String
        switch testScoreTotal / 10 {
        case 8:
            grade = "优悠悠"
        case 7:
            grade = "良亮亮"
        fallthrough// 执行下一个case
        default:
            grade = "差茶茶"
        }
        
        let testScore = 80
        var gradeNew: Character
        switch testScore {
        case 90...100:
            gradeNew = "优"
        case 80..<90:
            gradeNew = "良"
        case 70..<80:
            gradeNew = "中"
        case 60..<70:
            gradeNew = "差"
        case 0..<60:
            gradeNew = "烂"
        default:
            gradeNew = "无"
        }
        
        var student = (id: "1002", name: "李四", age:32, ChineseScore:90, EnglishScore:99)
        var desc: String
        switch student {
        case (let _,let _,let AGE,90...100, 90...100):
            if (AGE > 30) {
                desc = "老优"
            } else {
                desc = "小优"
            }
        case (_,_,let age1,80..<90, 80..<90) where age1 > 30:
            desc = "的确良"
        case (_,_,_,60..<80, 60..<80):
            desc = "中"
        default:
            desc = "差"
        }
        
        
        //      guard 等效于 if
        let blog1 = Blog(name: nil, URL: "unicode:com", Author: "Tom")
        self.guardStyleBlog(blog1)
        
        //      while
        var i: Int64 = 0
        while i * i < 1000 {
            i += 1
        } //repeat {
        //        i += 1
        //    } while i * i < 100_00
        
        //  for 循环:一般，for in，enumerate,嵌套for 等
        var j: Int64 , k: Int64
        for j in 1 ..< 10 where j > 8 {
            for k in 1..<10 {
                if k == j {
                    continue
                }
            }
            print("\(j) x \(j) = \(j * j)")
        }
        
        let numbers = [1,2,3,4,5,6]
        for item in numbers {
            if item == 3 {
                continue
            }
            print("coutn is :\(item)")
        }
        
        for (index, element) in numbers.enumerate(){
            print("Item \(index): \(element))")
        }
        
        if let blogNmae = blog1.name,
            let blogURL = blog1.URL,
            let blogAuthor = blog1.Author {
            print("这篇文章我就是测一下")
        } else {
            print("这篇博客信息不完整!")
        }
        guard let blogName = blog1.name,
            let blogURL = blog1.URL,
            let blogAuthor = blog1.Author else{
                print("我就是侧翼洗")
                return
        }
        print("这博客的名字:\(blogName)")
    }
    //    func ifStyleBlog(blog: Blog) {
    //        if let blogName = blog.name {
    //            print("博客名：\(blogName)")
    //        }
    //        print("这篇博客没有名字！")
    //    }
    
    func guardStyleBlog(blog: Blog) {
        guard let blogName = blog.name else {
            print("这博客没有名字")
            return
        }
        print("这博客的名字:\(blogName)")
    }
    
    func logArrAndDic(message: String) {
        //       不可变数组
        var studentListArr1: Array<String> = ["张三","李四","王五","董六"]
        var studentListArr3 = Array<String>()
        var studentListArr2 = [String]()
        
        //      可变数组
        var studentList3: [String] = ["张三","李四","王五"]
        studentList3.append("董六")
        studentList3 += ["刘备", "关羽"]
        studentList3.insert("郑飞", atIndex: studentList3.endIndex)
        studentList3.removeAtIndex(studentList3.startIndex)
        for (index, value) in studentList3.enumerate() {
            print("Item\(index) : \(value)")
        }
        //     字典
        var studentDic0: Dictionary<Int, String> = [102 : "张三",105 : "李四", 109 : "王五"]
        var studentDic2 = Dictionary<Int, String>() // 空字典
        var studentDic3 = [Int: String]()
        var studentDic1 = [102 : "张三", 109 : "李四", 87 : "王五"]
        studentDic1.removeValueForKey(102)
        studentDic1.updateValue("我擦", forKey: 109)
//        https://mp.weixin.qq.com/s?__biz=MjM5NTIyNTUyMQ==&mid=2709545194&idx=1&sn=e0e20cd038874aaf57b7e9de0910ab92&scene=0&key=7b81aac53bd2393d7874bc0ef4e640900acfb61e1e44da1baf060e587897ab8a7e21d5c6c60036d905840c8d5ec5e361&ascene=0&uin=MzkwNDY0NTc1&devicetype=iMac16%2C2+OSX+OSX+10.11.5+build(15F34)&version=11020201&pass_ticket=dHvzIrch%2FKubZidO7EdiYQ4TVyz7Tr7BNReleJP62gQvpFLE9%2FAS691P79jGTty%2F
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    
}

