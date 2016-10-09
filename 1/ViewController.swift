//
//  ViewController.swift
//  1
//
//  Created by 邱少依 on 16/9/6.
//  Copyright © 2016年 QSY. All rights reserved.
//关键字分类
// 1.搜索： 已被遗弃
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
    
    func logIndentifier(_ message: String) -> Void {
        let π = 33.1415926
        let _Hello = "hello"
        let 你好 = "你好世界"
        let `class` = "😄😊😃😉"
        let 🌍 = "🐶🐺🐱🐭🐹🐰🐸🐯🐨🐻🐷🐽🐮🐗🐵🐒🐴🐑🐘🐼🐧🐦🐤🐥🐣🐔🐍🐢🐛🐝🐜🐞🐌🐙🐚🐠🐟🐬🐳🐋🐄🐏🐀🐃🐅🐇🐉🐎🐐🐓🐕🐖🐁🐂🐲🐡🐊🐫🐪🐆🐈🐩"
        print("\n",π,_Hello,你好,`class`,🌍)
    }
    
    func logKeyword(_ message: String) -> Void {
        print("\n",(message:"FUNCTION:\(#function) COLUMN:\(#column) FILE:\(#file) LINE:\(#line)", separator: "->", terminator: "\n一切都会结束,代码也不例外"))
    }
    
    func logConstantAndVariation(_ message: String) -> Void {
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
    
    func logConnective(_ message : String) -> Void {
        //      一元运算符
        var a = 12
        a += 2// ++ -- 已被遗弃,用 a += 1, a -= 2
        let b = a
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
    
    func dataType(_ message : String) -> Void {
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
        let is🐴 = true
        var is🐻 : Bool = false
        let student1 = ("100" , "张三" , 80 , 90)
        let student3 = (id:"1002", name:"李四", chinese_score:32, math_score:80)
        var student2 :Array = ["woj","huduys",80,37] as [Any]
        var student4 : Dictionary = ["name" : "woj","test" : "huduys","id" : 80,"score" : 37] as [String : Any]
        
        
        
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
        let n1 : Int? = 100
        print(n1! + 100)
        
        let n2: Int! = 100
        print(n2! + 100)
        
    }
    
    func divide000(_ n1: Int, n2: Int) -> Double? {
        if n2 == 0 {
            return nil
        }
        return Double(n1)/Double(n2)
    }
    
    func logString(_ message: String) -> Void {
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
        newStr.insert("9", at: newStr.endIndex)
        print("增的newStr为:\(newStr)")
        
        newStr.remove(at: newStr.characters.index(before: newStr.endIndex))
        var rmStartIndex = newStr.startIndex
        var rmEndIndex = newStr.index(rmStartIndex, offsetBy: 9)// [0 9]的闭区间移除
        var rmRange = rmStartIndex...rmEndIndex
        newStr.removeSubrange(rmRange)
        print("删后的newStr为:\(newStr)")
        
        var replaceStart = newStr.startIndex
        var relpaceEnd = newStr.index(replaceStart, offsetBy: 0)
        var replaceRange = replaceStart...relpaceEnd
        newStr.replaceSubrange(replaceRange, with: "邱少依")
        
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
        let lowerCaseDoc = 🐼.lowercased()
    }
    
    func logKeyworUse(_ message: String) -> Void {
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
        
        let student = (id: "1002", name: "李四", age:32, ChineseScore:90, EnglishScore:99)
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
        
        for (index, element) in numbers.enumerated(){
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
    
    func guardStyleBlog(_ blog: Blog) {
        guard let blogName = blog.name else {
            print("这博客没有名字")
            return
        }
        print("这博客的名字:\(blogName)")
    }
    
    func logArrAndDic(_ message: String) {
           //      可变数组
        var studentListArr1: Array<String> = ["张三","李四","王五","董六"]
        var studentListArr3 = Array<String>()//空数组
        var studentListArr2 = [String]()//空数组
        var studentList3: [String] = ["张三","李四","王五"]
        studentList3.append("董六")
        studentList3 += ["刘备", "关羽"]
        studentList3.insert("郑飞", at: studentList3.endIndex)
        studentList3.remove(at: studentList3.startIndex)
        
        for (index, value) in studentList3.enumerated() {
            print("Item\(index) : \(value)")
        }
        
        //     字典
        var studentDic0: Dictionary<Int, String> = [102 : "张三",105 : "李四", 109 : "王五"]
        var studentDic2 = Dictionary<Int, String>() // 空字典
        var studentDic3 = [Int: String]()// 空字典
        var studentDic1 = [102 : "张三", 109 : "李四", 87 : "王五"]
        studentDic1.removeValue(forKey: 102)
        studentDic1.updateValue("我擦", forKey: 109)
        
        for studentID in studentDic1.keys {
            print("学号: \(studentID)")
        }
        for studentName in studentDic1.values {
            print("学生: \(studentName)")
        }
        for (key,value) in studentDic1 {
            print("Item:\(key),Value:\(value)")
        }
        //        集合
        let studentList11: Set<String> = ["张三","李四","王五","董六"]
        let studentList111: Set<String> = ["李四","王五","董六","张三"]
        var studentList12 = Set<String>()// 空集合
        
        if studentList11 == studentList111 {
            print("集合1studentList11:\(studentList11) 和 集合2 studentList111:\(studentList111)是相等的")
        }
        
        var studentL: Set<String>  = ["张三","李四","王五"]
        let removeStudent = studentL.removeFirst()
        studentL.insert("董六")
        studentL.remove("李四")
        if studentL.contains("董六") {
            print("测测这个集合：\(studentL)")
        }
        for (index,studentName) in studentL.enumerated() {
            print("Item \(index) : \(studentName)")
        }
//       筛选出2个集合的数据
        let A: Set<String> = ["a","b","c","d"]
        let B: Set<String> = ["c","d","e","f"]
        let C = A.subtracting(B)
        print("A与B的差集 = \(C)")// a 和 b
        if C.isSubset(of: A) {
            print("C是A的子集")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    
}

