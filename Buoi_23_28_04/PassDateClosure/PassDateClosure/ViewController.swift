//
//  ViewController.swift
//  PassDateClosure
//
//  Created by Ong_Lao_Ngao on 4/28/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addAction))
        self.navigationItem.rightBarButtonItem = addButton
        myTextView.isEditable = false // để khóa không cho edit textView
    }
    @objc func addAction(){
        let secondVC = SecondViewController()
        secondVC.hiText = "Chào các bạn";
        // bước 3: hứng dữ liệu
        secondVC.passData = {
            [weak self] data in
            
            guard let strongSelf = self else {return}
            strongSelf.myTextView.text += """
            -----
            \(data.name)
            \(data.phone)
            \n
            """
            
        }
        self.navigationController?.pushViewController(secondVC, animated: true)
    }

}

