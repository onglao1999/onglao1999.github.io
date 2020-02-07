//
//  ViewController.swift
//  Dong_Ho_Dien_Tu
//
//  Created by Ong_Lao_Ngao on 2/7/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit
let currentDate = NSDate()
let calendar = NSCalendar.current
var timer: Timer!
var tongGiay: Int = 0
class ViewController: UIViewController {
    @IBOutlet weak var hienThi: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // lấy thời gian thực
        let hour = calendar.component(.hour, from: currentDate as Date)
        let minite = calendar.component(.minute, from: currentDate as Date)
        let second = calendar.component(.second, from: currentDate as Date)
        tongGiay = hour*3600 + minite*60 + second
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
    }

    @objc func runTimer(){
        if tongGiay >= 23*3600 + 59*60 + 59 {
            tongGiay = 0
        }
        tongGiay += 1
        hienThi.text = stringFromNumberSecond(tongGiay)
    }
    
    func stringFromNumberSecond(_ numberSecond: Int) -> String{
        let gio = numberSecond/3600
        let phut = (numberSecond%3600)/60
        let giay = (numberSecond%3600)%60
        
        return "\(gio < 10 ? "0\(gio)" : "\(gio)"):\(phut < 10 ? "0\(phut)" : "\(phut)"):\(giay < 10 ? "0\(giay)" : "\(giay)")"
    }
}

