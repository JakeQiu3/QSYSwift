//
//  ViewController.swift
//  2
//
//  Created by 邱少依 on 16/9/21.
//  Copyright © 2016年 QSY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //       函数
        // 3种参数样式
        let newSize: Double = self.sizeArea(width: 10.0,height: 20.0)
        let rectangleArea = self.rectangleArea(W: 12.0, H: 12.0)
        let reactSize = self.rectangleSize(12, 20)
        print("我就是测测这3种方式的面积是多少：\(newSize),\(rectangleArea),\(reactSize)")
        // 常量参数
        let coffeeMakeNew: String = self.makecoffee()
        // 多参数
        let totalSum:Double = self.sum(numbers: 10.0,30.5,70.5,222)
        // 参数传递
        var value: Double = 10.0
        self.increment(value: &value)
        self.increment(value: &value, amount: 100.0)
        // 多参数和多返回值
        let move =  self.position(dt: 10.0, speed: (10,20))
        print("测试位移：\(move.x),\(move.y)")
        //  少 函数的嵌套:函数作为参数使用
        let getAreaqsyhh = self.getAreaQsy(funcName: sizeArea, a: 30.0, b: 40.5)
        // 函数作为返回值使用
        let getCalculate = self.calculate(opr: "+")
        print("获取和或者减法操作\(getCalculate)")
        
        //        闭包
        let f1: (Int, Int) -> Int = self.calculateFirst(opr: "+")
        let f2: (Int, Int) -> Int = self.caculateSecond(opr: "-===")
        let f3: (Int, Int) -> Int = self.calculateThird(opr: "hhhh")
        let f4: (Int, Int) -> Int = self.calculateFourth(opr: "000")
        let f5: Int = {
            $0 + $1
        }(10,33)
        print("f1: \(f1(10,43)),f2:\(f2(34,30)),f3:\(f3(90,12)),f4:\(f4(999,9)),f5:\(f5)")
        let f6 = makeArray(a: "wojiushiceyice")
        
    }
    
    //    函数123456
    func sizeArea(width:Double, height:Double) -> Double {
        let area = width * height
        return area
    }
    
    func rectangleArea(W width:Double, H height:Double) -> Double {
        let area = width * height
        return area
    }
    
    func rectangleSize(_ width:Double,_ height:Double) -> Double {
        let area = width * height
        return area
    }
    
    func makecoffee(type: String = "卡布奇诺") -> String {
        return "制作一杯\(type)咖啡"
    }
    
    func sum(numbers: Double...) -> Double {
        var total: Double = 0
        for number in numbers {
            total += number
        }
        return total
    }
    
    func increment(value: inout Double, amount: Double = 1.0) {
        value += amount
    }
    
    func position(dt: Double, speed: (x: Int, y: Int)) -> (x: Int, y: Int) {
        let posx: Int = speed.x * Int(dt)
        let posy: Int = speed.y * Int(dt)
        return (posx,posy)
    }
    
    func getAreaQsy(funcName: (Double, Double)-> Double, a: Double , b: Double)-> Double {
        let area = funcName(a,b)
        return area
    }
    
    func calculate(opr:String) -> (Int, Int) -> Int {// (Int, Int) -> Int返回值是个函数
        func add(a: Int, b: Int) -> Int {
            return a + b
        }
        
        func sub(a: Int, b: Int) -> Int {
            return a - b
        }
        
        var result: (Int, Int) -> Int
        switch (opr) {
        case "+":
            result = add
        case "-":
            result = sub
        default:
            result = add
        }
        return result
        
    }
    
    //   闭包的演化过程1234
    func calculateFirst(opr:String) -> (Int, Int) -> Int{
        var result: (Int, Int) -> Int // 声明一个函数的变量
        switch (opr) {
        case "+":
            result = {
                (a: Int, b: Int) ->Int in
                return a + b //标准样式
            }
        default:
            result = {
                (a: Int, b: Int) -> Int in
                return a - b
            }
        }
        return result
    }
    
    func caculateSecond(opr: String) -> (Int, Int) -> Int {
        var result:(Int, Int) -> Int
        switch opr {
        case "+":
            result = {
                (a, b)
                in return a + b//省去参数类型和返回值类型声明
            }
        default:
            result = {
                (a, b)
                in return a - b
            }
        }
        return result
    }
    
    func calculateThird(opr: String) -> (Int, Int) -> Int{
        var  result: (Int, Int) -> Int
        switch opr {
        case "+":
            result = {
                a, b in a + b //省去return
            }
        default:
            result = {
                a, b in a - b
            }
        }
        return result
        
    }
    
    func calculateFourth(opr: String) -> (Int, Int) -> Int {
        var result: (Int, Int) -> Int
        switch opr {
        case "+":
            result = {
                $0 + $1// 隐藏简化参数表示
            }
        default:
            result = {
                $0 - $1
            }
        }
        return  result
    }
    
    func makeArray(a: String) -> (String) -> [String] {
        var ary:[String] = [String]()
        func addElement(element: String) -> [String] {
            ary.append(a)
            return ary
        }
        return addElement
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

