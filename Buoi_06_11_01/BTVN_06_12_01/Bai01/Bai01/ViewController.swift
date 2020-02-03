//
//  ViewController.swift
//  Bai01
//
//  Created by Ong_Lao_Ngao on 1/12/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dem: UILabel!
    @IBOutlet weak var congSo: UIButton!
    @IBOutlet weak var reSet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dem.frame.size = CGSize(width: 300, height: 100)
        dem.center.x = view.center.x
        dem.center.y = view.center.y - 200
        
        congSo.frame = CGRect(x: dem.frame.origin.x, y: dem.frame.origin.y + 150, width: 90, height: 40)
        congSo.layer.cornerRadius = 20
        reSet.frame = CGRect(x: dem.frame.origin.x + dem.frame.size.width - 90, y: dem.frame.origin.y + 150, width: 90, height: 40)
        reSet.layer.cornerRadius = 20
        var tong: Int = 0
    }

    @IBAction func cong1DV(_ tong: Int) {
        var a = Int(dem.text ?? "0") ?? 0
        a += 1
        dem.text = "\(a)"
        
    }
    
    @IBAction func reSetBT(_ tong: Int) {
    var a = 0
        dem.text = "\(a)"
    }
}

