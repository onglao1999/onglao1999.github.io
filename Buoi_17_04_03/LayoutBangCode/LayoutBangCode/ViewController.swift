//
//  ViewController.swift
//  LayoutBangCode
//
//  Created by Ong_Lao_Ngao on 3/4/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let childView = UIView()
let bottomView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout1()
        setupLayout2()
    }
    
    
    
    func setupLayout1(){
        childView.backgroundColor = UIColor.red
        view.addSubview(childView)
        
        // cách 1: sử dụng NSLayoutConstraint
        let topConstraint = NSLayoutConstraint(item: childView,
                                               attribute: .top,
                                               relatedBy: .equal, toItem: self.view,
                                               attribute: .top,
                                               multiplier: 1, constant: 100)
        let leftConstraint = NSLayoutConstraint(item: childView,
          attribute: .leading,
        relatedBy: .equal,
        toItem: self.view,
        attribute: .leading,
        multiplier: 1, constant: 20)
        
         let rightConstraint = NSLayoutConstraint(item: childView,
                                                  attribute: .trailing,
                                                relatedBy: .equal,
                                                toItem: self.view,
                                                attribute: .trailing,
                                                multiplier: 1, constant: -20)
        
        let heightConstraint = NSLayoutConstraint(item: childView,
                                                         attribute: .height,
                                                       relatedBy: .equal,
                                                       toItem: self.view,
                                                       attribute: .height,
                                                       multiplier: 1/2, constant: 0)
        //dùng  childView.translatesAutoresizingMaskIntoConstraints = false để vô hiệu hóa frame
        childView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([topConstraint, leftConstraint, rightConstraint, heightConstraint])
    }
    
    func setupLayout2(){
        // layout sử dụng NSLayoutAnchor
        bottomView.backgroundColor = UIColor.blue
        view.addSubview(bottomView)
        
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.topAnchor.constraint(equalTo: self.childView.bottomAnchor, constant: 20).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -34).isActive = true
        
    }
}

