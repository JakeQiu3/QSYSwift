//
//  ViewController.swift
//  3
//
//  Created by 邱少依 on 16/9/26.
//  Copyright © 2016年 QSY. All rights reserved.
//

import UIKit

enum Workdays: Int {
    case Monday = 1
    case Tuesday = 2
    case Wednesday = 3
    case Thursday = 4
    case Friday = 5
}

struct Department {
    var no: Int = 0
    var name: String = ""
}

class Employee: NSObject {
    var no: Int = 0
    var name: String = ""
    var job: String?
    var salary: Double = 0
    var dept: Department?
}
    
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        枚举
        var day: Workdays
        day = .Monday
//        结构体
        var dept = Department()
        dept.name = "wojiushicece"
        dept.no = 10
//        类
        var emp = Employee()
        emp.no = Int(1.0)
        emp.name = "更新中"
        emp.job = "我就是测一测"
        emp.salary = 32.5
        emp.dept = Department.init(no: 10, name: "结构体")
        
        var newData = self.updateDept(dept: &dept)
        
    }
    
    func writeGreeting(day: Workdays) -> Void {
        switch day {
        case .Friday:
            print("")
        case .Thursday:
            print("")
        default:
            print("")
        }
    }
    
    func printFigure(figure: Workdays) {
        switch figure {
        case .Monday:
            print("这是周一")
        case .Friday:
            print("这是周五")
        default:
            print("这是周末")
        }
    }
    
    func updateDept(dept: inout Department) { // inout 函数内部实现改变外部参数
        dept.name = "Research"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


