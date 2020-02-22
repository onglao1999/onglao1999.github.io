//
//  CircleViewController.swift
//  CustomView
//
//  Created by Ong_Lao_Ngao on 2/15/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class CircleViewController: UIViewController {
    let view1 = CircleView(center: CGPoint(x: 100, y: 100), radius: 30, color: .blue)
    let view2 = CircleView(center: CGPoint(x: 100, y: 100), radius: 30, color: .blue)
    let view3 = CircleView(center: CGPoint(x: 100, y: 100), radius: 30, color: .blue)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.addSubview(view1)
        view2.addSubview(view2)
        view3.addSubview(view3)
      
        
    }
    


}
