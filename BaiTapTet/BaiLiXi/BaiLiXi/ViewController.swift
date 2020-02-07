//
//  ViewController.swift
//  BaiLiXi
//
//  Created by Ong_Lao_Ngao on 2/7/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hinhLX: UIImageView!
    
    @IBOutlet weak var tienLX: UIImageView!
    
    @IBOutlet weak var chon5l: UIButton!
    @IBOutlet weak var chon2l: UIButton!
    @IBOutlet weak var chon1l: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func mo5l(_ sender: Any) {
        tienLX.image = UIImage(named: "500k")
        self.tienLX.frame.origin = hinhLX.frame.origin
        UIView.animate(withDuration: 5){
            self.tienLX.frame.origin.y -= 200
        }
      
    }
    
    @IBAction func mo2l(_ sender: Any) {
        tienLX.image = UIImage(named: "200k")
         self.tienLX.frame.origin = hinhLX.frame.origin
        UIView.animate(withDuration: 5){
            self.tienLX.frame.origin.y -= 200
        }
    }
    @IBAction func mo1l(_ sender: Any) {
        tienLX.image = UIImage(named: "100k")
         self.tienLX.frame.origin = hinhLX.frame.origin
        UIView.animate(withDuration: 5){
            self.tienLX.frame.origin.y -= 200
        }
    }
    
}

