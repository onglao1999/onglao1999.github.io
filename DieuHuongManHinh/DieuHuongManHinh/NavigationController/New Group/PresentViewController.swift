//
//  PresentViewController.swift
//  DieuHuongManHinh
//
//  Created by Ong_Lao_Ngao on 4/21/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class PresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        // Do any additional setup after loading the view.
    }

    @IBAction func goPresent(_ sender: Any) {
        // khởi tạo màn DismissViewController
        // muốn đi đến màn nào thì phải khởi tạo màn đó
        let dismissVC = DismissViewController()
        dismissVC.modalPresentationStyle = .fullScreen
        //gọi màn present
        self.present(dismissVC, animated: true, completion: nil)
    }
    
   
}
