//
//  SecondViewController.swift
//  DieuHuongManHinh
//
//  Created by Ong_Lao_Ngao on 4/21/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        title = "Second "
        
        let popButton = UIBarButtonItem(title: "POP", style: .done, target: self, action: #selector(goBack))
        self.navigationItem.rightBarButtonItem = popButton
    }
    @objc func goBack(){
        // back về màn trước nó
        self.navigationController?.popViewController(animated: true)
        
        // back về bất kì màn nào
        //self.navigationController?.popToViewController(animated: true)
        
        // bất cứ đâu đều back về màn
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
