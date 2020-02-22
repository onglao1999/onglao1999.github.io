//
//  MainViewController.swift
//  CustomView
//
//  Created by Ong_Lao_Ngao on 2/15/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    let view1 = ShadowView()
    let view2 = ShadowView()
    let view3 = ShadowView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
               view.addSubview(view1)
               view.addSubview(view2)
               view.addSubview(view3)
               
        view1.backgroundColor = UIColor.blue
               view1.frame = CGRect(x: 0, y: 100, width: 300, height: 100)
               view2.frame = CGRect(x: 0, y: 250, width: 300, height: 100)
               view3.frame = CGRect(x: 0, y: 400, width: 300, height: 100)
        
    }
    

    
    

}
