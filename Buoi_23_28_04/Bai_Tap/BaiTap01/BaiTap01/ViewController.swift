//
//  ViewController.swift
//  BaiTap01
//
//  Created by Ong_Lao_Ngao on 5/1/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nhapSo: UITextField!
    @IBOutlet weak var ketQua: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nhập một số bất kì"
    }
    @IBAction func diQuaySo(_ sender: Any) {
        let secondVC = SecondViewController()
        guard var nhapSo01 = nhapSo.text else {
            return
        }
        secondVC.passData = {
            [weak self] data in
            self?.ketQua.text = data.ketQuaHienThi
            self?.ketQua.textColor = .red
        }
        secondVC.text1 = "\(nhapSo01)"
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

