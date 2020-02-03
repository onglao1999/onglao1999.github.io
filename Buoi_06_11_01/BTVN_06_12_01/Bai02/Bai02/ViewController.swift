//
//  ViewController.swift
//  Bai02
//
//  Created by Ong_Lao_Ngao on 1/12/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var laBel: UILabel!
    @IBOutlet weak var startOn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        laBel.frame.size = CGSize(width: 300, height: 100)
        laBel.center.x = view.center.x
        laBel.center.y = view.center.y - 200
        var a: Bool = true
        ramDom(a)
    }
    
    
    @IBAction func ramDom(_ a: Bool) {
         
        laBel.text = "\(Int.random(in: 1...3))"
        
    }
    

}

