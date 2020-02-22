//
//  ViewController.swift
//  CustomView
//
//  Created by Ong_Lao_Ngao on 2/15/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let view1: UIView = {
        let view1 = UIView()
        view1.backgroundColor = UIColor.white
        view1.layer.cornerRadius = 10
        view1.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 300, height: 100)).cgPath
        view1.layer.shadowOffset = CGSize(width: 10, height: 10)
        view1.layer.shadowRadius = 10
        view1.layer.shadowOpacity = 0.5
        return view1
    }()
    
    let view2: UIView = {
        let view2 = UIView()
        view2.backgroundColor = UIColor.blue
        view2.layer.cornerRadius = 10
        view2.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 300, height: 100)).cgPath
        view2.layer.shadowOffset = CGSize(width: 10, height: 10)
        view2.layer.shadowRadius = 10
        view2.layer.shadowOpacity = 0.5
         return view2
    }()
    let view3: UIView = {
        let view3 = UIView()
        view3.backgroundColor = UIColor.black
        view3.layer.cornerRadius = 10
        view3.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 300, height: 100)).cgPath
        view3.layer.shadowOffset = CGSize(width: 10, height: 10)
        view3.layer.shadowRadius = 10
        view3.layer.shadowOpacity = 0.5
         return view3
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        
        
        view1.frame = CGRect(x: 0, y: 100, width: 300, height: 100)
        view2.frame = CGRect(x: 0, y: 250, width: 300, height: 100)
        view3.frame = CGRect(x: 0, y: 400, width: 300, height: 100)
    }
    
   

}

