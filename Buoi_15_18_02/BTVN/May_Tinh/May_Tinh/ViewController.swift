//
//  ViewController.swift
//  May_Tinh
//
//  Created by Ong_Lao_Ngao on 2/20/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var mang1: [String] = ["0"]
    var a: String = ""
    var d: Int = 0
    @IBOutlet weak var hThi: UILabel!
    @IBOutlet weak var so0: UIButton!
    @IBOutlet weak var so1: UIButton!
    @IBOutlet weak var so2: UIButton!
    @IBOutlet weak var so3: UIButton!
    @IBOutlet weak var so4: UIButton!
    @IBOutlet weak var so5: UIButton!
    @IBOutlet weak var so6: UIButton!
    @IBOutlet weak var so7: UIButton!
    @IBOutlet weak var so8: UIButton!
    @IBOutlet weak var so9: UIButton!
    @IBOutlet weak var cong: UIButton!
    @IBOutlet weak var tru: UIButton!
    @IBOutlet weak var nhan: UIButton!
    @IBOutlet weak var chia: UIButton!
    @IBOutlet weak var bang: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func dienSo(_ sender: Buttomv) {
        let c: Int = sender.tag
        switch c {
        case 0: mang1.append("0")
        case 1: mang1.append("1")
        case 2: mang1.append("2")
        case 3: mang1.append("3")
        case 4: mang1.append("4")
        case 5: mang1.append("5")
        case 6: mang1.append("6")
        case 7: mang1.append("7")
        case 8: mang1.append("8")
        case 9: mang1.append("9")
        default:
            break
        }
        hienThi()
    }
    
    @IBAction func dauTInh(_ sender: Buttomv) {
        var c: Int = sender.tag
        switch c {
        case 1:
            gopM()
            d = 1
        case 2:
            gopM()
            d = 2
        case 3:
            gopM()
            d = 3
        case 4:
            gopM()
            d = 4
        default:
            break
        }
    }
    
    func hienThi(){
        hThi.text = mang1.joined()
    }
    
    func gopM(){
        a = mang1.joined()
        print("a1: \(a)")
        mang1.removeAll()
        mang1.append("0")
        print("a1: \(a)")
        hienThi()
    }
    
    @IBAction func kQua(_ sender: Any) {
        let dd: Float = Float(a ?? "") ?? 0.0
        let b: String = mang1.joined()
        let dd1: Float = Float(b ?? "") ?? 0.0
        switch d {
        case 1:
            a = String(dd + dd1)
        case 2:
            a = String(dd - dd1)
        case 3:
            a = String(dd * dd1)
        case 4:
            a = String(dd / dd1)
        default:
            break
        }
        mang1.removeAll()
        mang1.append(a)
        hThi.text = a
    }
    
    @IBAction func reset(_ sender: Any) {
        a = ""
        mang1.removeAll()
        mang1.append("0")
        hThi.text = mang1.joined()
    }
}
