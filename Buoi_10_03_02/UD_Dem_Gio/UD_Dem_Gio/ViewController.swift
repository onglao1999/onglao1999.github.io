//
//  ViewController.swift
//  UD_Dem_Gio
//
//  Created by Ong_Lao_Ngao on 2/5/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

enum Time {
    case Strart
    case Pause
}
class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    var timer: Timer!
    var numberSecond: Int = 0
    
    var timeType: Time = .Strart
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func changePress(_ sender: Any) {
        if timeType == Time.Strart{
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)
            actionButton.setTitle("Pause", for: .normal)
            timeType = Time.Pause
        } else {
            actionButton.setTitle("Start", for: .normal)
            timeType = Time.Strart
            timer.invalidate()
        }
    }
    
    @IBAction func resetPress(_ sender: Any) {
        numberSecond = 0
        timeLabel.text = stringFromNumberSecond(numberSecond)
        timeType = .Strart
        timer.invalidate()
    }
    @objc func runLoop(){
        numberSecond += 1
        timeLabel.text = stringFromNumberSecond(numberSecond)
    }
    
    func stringFromNumberSecond(_ numberSecond: Int) -> String{
        let gio = numberSecond/3600
        let phut = (numberSecond%3600)/60
        let giay = (numberSecond%3600)%60
        
        return "\(gio < 10 ? "0\(gio)" : "\(gio)"):\(phut < 10 ? "0\(phut)" : "\(phut)"):\(giay < 10 ? "0\(giay)" : "\(giay)")"
    }
}

