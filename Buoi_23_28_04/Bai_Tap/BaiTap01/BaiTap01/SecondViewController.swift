//
//  SecondViewController.swift
//  BaiTap01
//
//  Created by Ong_Lao_Ngao on 5/1/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var soDaChon: UILabel!
    @IBOutlet weak var buttonQS: UIButton!
    var passData: ((User) -> Void)?
    
    var a: Bool = true
    var text1: String?
    var ketQua: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Quay số may mắn"
        guard let text2 = text1 else {
            return
        }
        soDaChon.text = "Số đã chọn là " + text2
        
    }
    
    
    @IBAction func quaySo(_ sender: Any) {
        
        if a == false {
            var b = Int(text1 ?? "");
            var random = Int.random(in: 0...100)
            if b == random {
                ketQua = "Chúc mừng bạn đã chọn đúng!!!"
            } else{
                ketQua = "Xin lỗi. Bạn đã chọn sai !!!"
            }
            guard let ketQua1 = ketQua else {
                return
            }
            // b2: Truyền dữ liệu
            passData?(User(ketQuaHienThi: ketQua1))
            self.navigationController?.popViewController(animated: true)
        }
        if a == true {
            buttonQS.setTitle("Nhận thưởng", for: .normal)
            a = false
        }
    }
    
    
}
