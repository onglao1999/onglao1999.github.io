//
//  ViewController.swift
//  GDBai01
//
//  Created by Ong_Lao_Ngao on 2/3/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hThi: UILabel!
    
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var pause: UIButton!
    @IBOutlet weak var reSet: UIButton!
    
    
    var timer: Timer!
    var s: Int = 0
    override func viewDidLoad() {
        
        super.viewDidLoad()
        hThi.text = "\(s) s"
    }

    @IBAction func bDau(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1,
                                            target: self,
                                            selector: #selector(runTimer),
                                            userInfo: nil,
                                            repeats: true)
        
    }
    
    @IBAction func tDung(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func kThuc(_ sender: Any) {
        s = 0
        hThi.text = "\(s) s"
        timer.invalidate()
    }
    @objc func runTimer(){
        s += 1
        hThi.text = "\(s) s "
        
       }
}

