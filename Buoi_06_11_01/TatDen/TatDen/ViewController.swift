//
//  ViewController.swift
//  TatDen
//
//  Created by Ong_Lao_Ngao on 1/11/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bulbImageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    // khai báo biến để kiểm tra trạng thái đèn đang được bật, hay tắt
    // true là đang bật, false là đang tắt
    var isTurnOn: Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // đổ màu background
        view.backgroundColor = .black
        // set kích thước, tọa độ cho bóng đèn
        bulbImageView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        
        // xác định tọa độ cho button
        button.center.x = view.center.x
        // origin là giữa,
        // maxY của frame tương đương với chiều cao của đối tượng đó
        button.frame.origin.y = view.frame.maxY - 150
        
        //set ảnh mặc định bạn đầu
        // thuộc tính image của UIImageView có kiểu là UIImage
        bulbImageView.image = UIImage(named: "anhtat")
        // set tên của nút
        // UIControl.State.narmal có thể viết tắt là .normal
        // UIControl.State chỉ là trạng thái của button
        // Các trạng thái của button thường gặp là normal (bình thường), hightlight(nhấn và giữ), selected(được chọn), disable
        button.setTitle("Tắt đèn", for: UIControl.State.normal)
        
        // set biến kiểm tra ban đầu là true
        isTurnOn = true
    }

    @IBAction func onPress(_ sender: Any) {
        if isTurnOn {
            bulbImageView.image = UIImage(named: "anhbat")
            button.setTitle("Tắt Đèn", for: .normal)
            isTurnOn = false
        }else{
            bulbImageView.image = UIImage(named: "anhtat")
            button.setTitle("Bật Đèn", for: .normal)
            isTurnOn = true
        }
        
    }
    
}

