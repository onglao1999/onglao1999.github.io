//
//  ViewController.swift
//  Bai1
//
//  Created by Ong_Lao_Ngao on 3/14/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit
var view1 = UIView()
var hinhTronWhite = UIView()
var hinhTronblue = UIView()
var hinhTronYellow = UIView()
var hinhTronPink = UIView()
var helloLB = UILabel()
var btAccount = UIButton()
var btLogin = UIButton()
var timer = Timer()
var timer1 = Timer()
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        xView1()
        xhinhTron(hinhTronWhite, 0.9, .white, 300, 100)
        LBhi()
        bottonUser(btAccount, 0.85, 0.06, -130, .green, .white, "Create Account")
        bottonUser(btLogin, 0.85, 0.06, -60, .blue , .black, "Log In")
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(tele), userInfo: nil, repeats: true)
    }
    var b = [UIView]()
    @objc func tele(){
        for i in b {
            i.removeFromSuperview()
        }
        xhinhTron(hinhTronYellow, 0.05, .yellow, 300, 20)
        xhinhTron1(hinhTronblue, 0.12, .blue, 250, 50)
        xhinhTron(hinhTronPink, 0.25, .red, 400, 20)
        b.append(hinhTronblue)
        b.append(hinhTronPink)
        b.append(hinhTronYellow)
        timer.invalidate()
        timer1 = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(tele1), userInfo: nil, repeats: true)
    }
    @objc func tele1(){
        for i in b {
            i.removeFromSuperview()
        }
        b.removeAll()
        xhinhTron1(hinhTronYellow, 0.05, .yellow, 300, 20)
        xhinhTron(hinhTronblue, 0.12, .blue, 250, 50)
        xhinhTron1(hinhTronPink, 0.25, .red, 400, 20)
        b.append(hinhTronblue)
        b.append(hinhTronPink)
        b.append(hinhTronYellow)
        timer1.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(tele), userInfo: nil, repeats: true)
    }
    func bottonUser(_ bottonbt: UIButton,_ widthbt: CGFloat,_ height: CGFloat,_ bottomAC: CGFloat,_ colorbt: UIColor,_ colortext: UIColor,_ text1: String){
        bottonbt.backgroundColor = colorbt
        bottonbt.setTitleColor(colortext, for: .normal)
        bottonbt.setTitle(text1, for: .normal)
        bottonbt.layer.cornerRadius = CGFloat(10)
        view1.addSubview(bottonbt)
        bottonbt.translatesAutoresizingMaskIntoConstraints = false
        bottonbt.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: widthbt).isActive = true
        bottonbt.heightAnchor.constraint(equalTo: view1.heightAnchor, multiplier: height).isActive = true
        bottonbt.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: bottomAC).isActive = true
        bottonbt.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
    }
    func LBhi(){
        // helloLB.backgroundColor = .blue
        helloLB.text = "Hello there, welcome home."
        helloLB.numberOfLines = 2
        helloLB.font = UIFont.systemFont(ofSize: 25)
        helloLB.textColor = .white
        view1.addSubview(helloLB)
        helloLB.translatesAutoresizingMaskIntoConstraints = false
        helloLB.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: 0.6).isActive = true
        helloLB.heightAnchor.constraint(equalTo: view1.widthAnchor, multiplier: 0.2).isActive = true
        helloLB.topAnchor.constraint(equalTo: view1.topAnchor, constant: 100).isActive = true
        helloLB.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 20).isActive = true
    }
    func xView1(){
        view1.backgroundColor = .darkGray
        view.addSubview(view1)
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        view1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        view1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        view1.bottomAnchor.constraint(equalToSystemSpacingBelow: view.bottomAnchor, multiplier: 0).isActive = true
    }
    func xhinhTron(_ hTron: UIView,_ r: CGFloat,_ colorHT: UIColor,_ topAC: CGFloat,_ leftAC: CGFloat){
        hTron.backgroundColor = colorHT
        view1.addSubview(hTron)
        hTron.translatesAutoresizingMaskIntoConstraints = false
        hTron.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: r).isActive = true
        hTron.heightAnchor.constraint(equalTo: view1.widthAnchor, multiplier: r).isActive = true
        hTron.topAnchor.constraint(equalTo: view1.topAnchor, constant: topAC).isActive = true
        hTron.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: leftAC).isActive = true
        hTron.layer.cornerRadius = CGFloat(r*view.frame.maxX/2)
    }
    func xhinhTron1(_ hTron: UIView,_ r: CGFloat,_ colorHT: UIColor,_ topAC: CGFloat,_ leftAC: CGFloat){
        hTron.backgroundColor = colorHT
        view1.addSubview(hTron)
        hTron.translatesAutoresizingMaskIntoConstraints = false
        hTron.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: r).isActive = true
        hTron.heightAnchor.constraint(equalTo: view1.widthAnchor, multiplier: r).isActive = true
        hTron.topAnchor.constraint(equalTo: view1.topAnchor, constant: topAC).isActive = true
        hTron.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: leftAC + 5).isActive = true
        hTron.layer.cornerRadius = CGFloat(r*view.frame.maxX/2)
    }
}
