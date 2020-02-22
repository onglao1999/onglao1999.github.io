//
//  SecondViewController.swift
//  CustomView
//
//  Created by Ong_Lao_Ngao on 2/15/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    let view1 = ColorView(color: .blue)
     let view2 = ColorView(color: .red)
     let view3 = ColorView(color: .black)
    override func viewDidLoad() {
        super.viewDidLoad()

        super.viewDidLoad()
               super.viewDidLoad()
                      view.addSubview(view1)
                      view.addSubview(view2)
                      view.addSubview(view3)
                      
               view1.backgroundColor = UIColor.blue
                      view1.frame = CGRect(x: 0, y: 100, width: 300, height: 100)
                      view2.frame = CGRect(x: 0, y: 250, width: 300, height: 100)
                      view3.frame = CGRect(x: 0, y: 400, width: 300, height: 100)
        
        view1.center.x = view.center.x
        view2.center.x = view.center.x
        view3.center.x = view.center.x
    }
    

   

}
