//
//  ViewController.swift
//  BaiDongHoDienTu
//
//  Created by Ong_Lao_Ngao on 2/6/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hienThi: UILabel!
    var timer: Timer!
    var tongGiay: Int = 0
    let currentDate = NSDate()
    let calendar = NSCalendar.current
    override func viewDidLoad() {
        super.viewDidLoad()
        let hour = calendar.component(.hour, from: currentDate as Date)
        let minute = calendar.component(.minute, from: currentDate as Date)
        let second = calendar.component(.second, from: currentDate as Date)
        tongGiay = hour*3600 + minute*60 + second
        
        
        
        hienThi.text = stringFromNumberSecond(tongGiay)
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

