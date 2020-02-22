//
//  ViewController.swift
//  May_Tinh
//
//  Created by Ong_Lao_Ngao on 2/20/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var mang1: [String] = ["0"]
    var a: String!
    var d: Int!
    @IBOutlet weak var hThi: UILabel!
    @IBOutlet weak var so0: UIButton!
    @IBOutlet weak var so1: UIButton!
    @IBOutlet weak var so2: UIButton!
    @IBOutlet weak var so3: UIButton!
    @IBOutlet weak var so4: UIButton!
    @IBOutlet weak var so5: UIButton!
    @IBOutlet weak var so6: UIButton!
    @IBOutlet weak var so7: UIButton!
    @IBOutlet weak var so8: UIButton!
    @IBOutlet weak var so9: UIButton!
    @IBOutlet weak var cong: UIButton!
    @IBOutlet weak var tru: UIButton!
    @IBOutlet weak var nhan: UIButton!
    @IBOutlet weak var chia: UIButton!
    @IBOutlet weak var bang: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
   

    @IBAction func dienSo(_ sender: Any) {
        if so0.tag == 0 {
            mang1.append("0")
            
        }
        
        if so1.tag == 1 {
            mang1.append("1")
            
        }
        
        if ((so2?.tag) != nil) {
            mang1.append("2")
          
        }
        
        if ((so3?.tag) != nil) {
            mang1.append("3")
           
        }
        
        if ((so4?.tag) != nil) {
            mang1.append("4")
           
        }
        
        if ((so5?.tag) != nil) {
            mang1.append("5")
            
        }
        
        if ((so6?.tag) != nil) {
            mang1.append("6")
            
        }
        
        if ((so7?.tag) != nil) {
            mang1.append("7")
            
        }
        
        if ((so8?.tag) != nil) {
            mang1.append("8")
         
        }
        
        if ((so9?.tag) != nil) {
            mang1.append("9")
            
        }
        
        hienThi()
    }
    
    @IBAction func dauTInh(_ sender: Any) {
        if ((cong?.tag) != nil) {
            gopM()
            d = 1
            
        }
        
        if ((tru?.tag) != nil) {
            gopM()
            d = 2
        }
        
        if ((nhan?.tag) != nil) {
            gopM()
            d = 3
            
        }
        
        if ((chia?.tag) != nil) {
            gopM()
            d = 4
        }
    }
    func hienThi(){
        hThi.text = mang1.joined()
    }
    func gopM(){
        a = mang1.joined()
        mang1.removeAll()
        mang1.append("0")
    }
}

