//
//  ViewController.swift
//  Bai01
//
//  Created by Ong_Lao_Ngao on 1/15/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nhapCN: UITextField!
    @IBOutlet weak var nhapCC: UITextField!
    @IBOutlet weak var kTra: UIButton!
    @IBOutlet weak var ketQ: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // tap supper view
        let gesture = UITapGestureRecognizer(target: self, action: #selector(tapWhenHideKeyboard))
        view.addGestureRecognizer(gesture)
    }
//@objc là dấu hiệu sự kế thừa từ objctive-C
    @objc func tapWhenHideKeyboard(){
        // ẩn tụt bàn phím
    self.view.endEditing(true)
    }
    
    @IBAction func kiemTra(_ sender: Any) {
        
        var a: Float = Float(nhapCN.text ?? "") ?? 0.0
        var b: Float = Float(nhapCC.text ?? "") ?? 0.0
        b = b / 100
        print(b)
        tinhToan(a, b)
    }
    
    func tinhToan(_ a: Float, _ b: Float) {
        var c: Float = Float(a / ( b * b))
        print(c)
        switch c {
        case 0.0..<18.5:
            ketQ.text = "Thiếu Cân"
            
            
        case 18.50..<22.99:
            ketQ.text = "Bình thường"
        
            
        case 23.00..<24.99:
        ketQ.text = "Thừa cân"
        
            
        case 25.00..<29.99:
        ketQ.text = "Béo phì cấp độ I"
        
            
        case 30.00..<39.99:
        ketQ.text = "Béo phì cấp độ II"
        
            
        case 40.00..<300.00:
        ketQ.text = "Béo phì cấp độ III"
        
            default:
                ketQ.text = " Sai thông số"
        
            
        }
    }
}

