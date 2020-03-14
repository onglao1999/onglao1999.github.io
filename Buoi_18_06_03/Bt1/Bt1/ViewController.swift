//
//  ViewController.swift
//  Bt1
//
//  Created by Ong_Lao_Ngao on 3/6/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer: Timer!
    
let view1 = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.backgroundColor = .red
        
        view1.frame.size.width = CGFloat(200)
        view1.frame.size.height = CGFloat(200)
        view1.center = view.center
        view.addSubview(view1)
        
         view1.transform = CGAffineTransform(rotationAngle: CGFloat.pi/4)
        
        
        timer = Timer.scheduledTimer(timeInterval: 0.06, target: self, selector: #selector(run), userInfo: nil, repeats: true)
    }
    
    @objc func run(){
        view1.transform = view1.transform.concatenating(CGAffineTransform(rotationAngle: CGFloat.pi/8))
        
    
}


}

