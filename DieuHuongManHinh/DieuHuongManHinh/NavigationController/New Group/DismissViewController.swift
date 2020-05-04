//
//  DismissViewController.swift
//  DieuHuongManHinh
//
//  Created by Ong_Lao_Ngao on 4/21/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class DismissViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func backDismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
   
}
