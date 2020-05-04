//
//  SecondViewController.swift
//  PassDateClosure
//
//  Created by Ong_Lao_Ngao on 4/28/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var hiLabal: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var PhoneTextField: UITextField!
    var hiText: String?
    // bước 1: tạo closure
    var passData: ((User) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Screen2"
        if let text = hiText {
            hiLabal.text = text
        }
        
        let backButton = UIBarButtonItem(title: "back", style: .done, target: self, action: #selector(back))
        self.navigationItem.leftBarButtonItem = backButton
    }

    @objc func back(){
        print("abc")
        guard let name = nameTextField.text, let phone = PhoneTextField.text else {
            return
        }
        print(name, phone)
        //bước 2: truyền dữ liệu
        passData?(User(name: name, phone: phone))
        self.navigationController?.popViewController(animated: true)
    }
    
}
