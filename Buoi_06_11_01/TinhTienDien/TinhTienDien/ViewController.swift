//
//  ViewController.swift
//  TinhTienDien
//
//  Created by Ong_Lao_Ngao on 1/11/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
            // set placeholder cho priceTextField
        priceTextField.placeholder = "Nhập giá điện"
        
        // set keyboardType cho priceTextField
        priceTextField.keyboardType = .decimalPad
        
        //set borderStyle cho textField
        // các loại style : bezel, line, roundedRect
        priceTextField.borderStyle = .bezel
    }
    @IBAction func onPress(_ sender: Any) {
//        //Lấy dữ liệu người dùng nhập vào
//        let numberText = Int(numberTextField.text ?? "0") ?? 0
//        let priceLabel = Int(priceTextField.text ?? "0") ?? 0
//        let tiendien = numberText * priceLabel
//        totalLabel.text = "Tổng tiền điện: \(tiendien)"
//        print(totalLabel)
        
        // cách hay hơn
        guard let numberText = numberTextField.text, let number = Float(numberText) else {
            return
        }
        guard let priceText = priceTextField.text, let price = Float(priceText) else {
            return
        }
        
        totalLabel.text = "Tiền điện: \(number * price) VND"
        print(numberText)
    }
    

}

// build ra iphone
// if... let, guord... let
