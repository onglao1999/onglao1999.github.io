//
//  ViewController.swift
//  DemoTimer
//
//  Created by Ong_Lao_Ngao on 1/18/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // khai báo 1 biến kiểu dữ liệu Timer
    // một timer giúp chúng ta thực hiện một vài công việc sau mỗi khoảng thời gian nhất định
    var timer: Timer!
    var dem: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // khởi tạo timer
        //  timeInterval: chỉ thời gian tính bằng giây. sau khoảng thời gian thực hiện công việc
        // target: truyền vào self (bản thân của )
        // nếu để  là true thì cứ sau mỗi timeInterval (s) hàm runTimer() sẽ được gọi 1 lần
        timer = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(runTimer),
                                     userInfo: nil,
                                     repeats: true)
    }

// khai báo 1 hàm kế thừa objective-C
    @objc func runTimer(){
        dem += 1
        print(dem)
    }
}

