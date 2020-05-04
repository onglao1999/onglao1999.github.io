//
//  ViewController.swift
//  BaiTap2
//
//  Created by Ong_Lao_Ngao on 5/2/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var lablavctl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func button1(_ sender: Any) {
        let man2 = Man2_ViewController()
        man2.lb =  self.textField.text
        man2.passData = {
            [weak self] data in
            self?.lablavctl.text = data.labal
        }
        
    self.navigationController?.pushViewController(man2, animated: true)
        
    }
    
}

