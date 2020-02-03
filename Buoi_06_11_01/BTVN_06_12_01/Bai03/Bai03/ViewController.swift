//
//  ViewController.swift
//  Bai03
//
//  Created by Ong_Lao_Ngao on 1/12/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nhapTien: UITextField!
    @IBOutlet weak var tinhTien: UIButton!
    @IBOutlet weak var thanhTien: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thanhTien.text = "0 NVD"
        var a: Bool = true
//        tinhThanhTien(a)
    }

    @IBAction func tinhThanhTien(_ a: Bool) {
        let nhaptien1 = nhapTien.text ?? ""
        let sender = Float(nhaptien1 ?? "0") ?? 0
               
       var tien: Float = 0
       if  sender > 30.0 {
           tien = sender * 3000.0 + 30.0 * 1000.0 + 2000.0
       } else {
           if  sender <= 1.0 {
               tien = 5000
           } else{
               tien = sender * 4000 + 1000
           }
    }
        thanhTien.text = "\(tien) VND"
    
}

}
