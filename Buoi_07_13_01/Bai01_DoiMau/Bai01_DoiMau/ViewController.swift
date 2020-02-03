//
//  ViewController.swift
//  Bai01_DoiMau
//
//  Created by Ong_Lao_Ngao on 1/13/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonDoi: UIButton!
    var mang: [UIColor] = [UIColor.black, UIColor.blue, UIColor.red, UIColor.yellow, UIColor.gray]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonDoi.frame.size = CGSize(width: 200, height: 90)
        buttonDoi.center.x = view.center.x
        buttonDoi.center.y = view.center.y - 100
        view.backgroundColor = mang.randomElement()
        
    }
    
    @IBAction func doiMau(_ sender: UIButton) {
        
        var a: UIColor?
        repeat {
            a = mang.randomElement()
            
        } while a == view.backgroundColor
        
        view.backgroundColor = a
        
    }
    
}

