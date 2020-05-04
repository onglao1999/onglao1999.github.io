//
//  ViewController.swift
//  LogIn_B1
//
//  Created by Ong_Lao_Ngao on 3/22/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var view1 = UIView()
    var hTron1 = UIView()
    var hTron2 = UIView()
    var hTron3 = UIView()
    var hTron4 = UIView()
    var mang = [NSLayoutXAxisAnchor]()
    //var mang1 = [NSLayoutXAxisAnchor]()
    var mang1 = [NSLayoutConstraint]()
    //var mang = [UIView]()
    var timer1 = Timer()
    var timer2 = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        addview1()
         hinhTron(hTron1, 1, 0.3, 0.17, .white)
        hinhTron(hTron2, 0.1, 0.3, 0.1, .blue)
        hinhTron(hTron3, 0.03, 0.38, 0.05, .yellow)
        hinhTron(hTron4, 0.2, 0.58, 0.01, .green)
        
       timer1 = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(tele1), userInfo: nil, repeats: true)
    }
    @objc func tele1(){
        mang.removeAll()
        hTron1.leadingAnchor
        mang[0].constraint(equalTo: view1.leftAnchor, constant: CGFloat(0.17 * Float(view.frame.size.width))).isActive = true
        mang[1].constraint(equalTo: view1.leftAnchor, constant: CGFloat(0.1 * Float(view.frame.size.width))).isActive = true
        mang[2].constraint(equalTo: view1.leftAnchor, constant: CGFloat(0.05 * Float(view.frame.size.width))).isActive = true
        mang[3].constraint(equalTo: view1.leftAnchor, constant: CGFloat(0.01 * Float(view.frame.size.width))).isActive = true
       
        
        
        
        timer1.invalidate()
        timer2 = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(tele2), userInfo: nil, repeats: true)
    }
    
    @objc func tele2(){
        mang.removeAll()
        mang[0].constraint(equalTo: view1.leftAnchor, constant:CGFloat(5) + CGFloat(0.17 * Float(view.frame.size.width))).isActive = true
        mang[1].constraint(equalTo: view1.leftAnchor, constant:CGFloat(5) + CGFloat(0.1 * Float(view.frame.size.width))).isActive = true
        mang[2].constraint(equalTo: view1.leftAnchor, constant:CGFloat(5) + CGFloat(0.05 * Float(view.frame.size.width))).isActive = true
        mang[3].constraint(equalTo: view1.leftAnchor, constant:CGFloat(5) + CGFloat(0.01 * Float(view.frame.size.width))).isActive = true
        timer2.invalidate()
        timer1 = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(tele1), userInfo: nil, repeats: true)
    }
    func addview1(){
        view.addSubview(view1)
        view1.backgroundColor = .gray
        view1.translatesAutoresizingMaskIntoConstraints = false
        
        view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        view1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        view1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        view1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    func hinhTron(_ hTron: UIView,_ r: Float,_ topAC: Float,_ leftAC: Float,_ colorAC: UIColor){
        
        view1.addSubview(hTron)
        hTron.backgroundColor = colorAC
        hTron.translatesAutoresizingMaskIntoConstraints = false
        
        
        hTron.topAnchor.constraint(equalTo: view1.topAnchor, constant: CGFloat(topAC * Float(view.frame.size.height))).isActive = true
//       hTron.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: CGFloat(leftAC * Float(view.frame.size.width))).isActive = true
        
        hTron.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: CGFloat(r)).isActive = true
        hTron.heightAnchor.constraint(equalTo: view1.widthAnchor, multiplier: CGFloat(r)).isActive = true
        hTron.layer.cornerRadius = CGFloat(Float(view.frame.size.width)*r/2)
        
        
        
    }
}

