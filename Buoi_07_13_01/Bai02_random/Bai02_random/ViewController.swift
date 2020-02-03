//
//  ViewController.swift
//  Bai02_ranDom
//
//  Created by Ong_Lao_Ngao on 1/13/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nhapVao: UITextField!
    @IBOutlet weak var batDau: UIButton!
    @IBOutlet weak var dapAn: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nhapVao.text = " "
    }

    @IBAction func hamDA(_ sender: Any) {
        if ranDom() == Int(nhapVao.text ?? "") ?? 0 {
            dapAn.text = "Chúc Mừng"
        } else{
            dapAn.text = " Rất Tiếc"
        }
    }
    var n: Int = -1
    func ranDom() -> Int {
        var m: Int = Int.random(in: 0...100)
        if m == n {
            m = Int.random(in: 0...100)
        }
        n = m
        return m
    }
}

