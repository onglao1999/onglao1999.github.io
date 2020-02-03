//
//  ViewController.swift
//  Buoi_06_11_01
//
//  Created by Ong_Lao_Ngao on 1/11/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var yellowView: UIView!
    let widthScreen = UIScreen.main.bounds.width
    let heightScreen = UIScreen.main.bounds.height
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        super.viewDidLoad()
        
        redView.frame.size = CGSize(width: widthScreen/2, height: widthScreen/2)
        redView.center = view.center
        
        yellowView.frame = redView.bounds.insetBy(dx: 20, dy: 20)
    }


}

