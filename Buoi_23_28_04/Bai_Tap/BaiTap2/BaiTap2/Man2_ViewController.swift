//
//  Man2_ViewController.swift
//  BaiTap2
//
//  Created by Ong_Lao_Ngao on 5/2/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class Man2_ViewController: UIViewController {
    var lb: String?
    @IBOutlet weak var label01: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    // tao closure
    var passData: ((Phone) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let lb1 = lb else {
                   return
               }
               label01.text = lb1
        
    }

    @IBAction func bt2(_ sender: Any) {
        guard let tf = textField.text else {
            return
        }
        passData?(Phone(labal: tf))
        self.navigationController?.popViewController(animated: true)
    }

    
   
}
