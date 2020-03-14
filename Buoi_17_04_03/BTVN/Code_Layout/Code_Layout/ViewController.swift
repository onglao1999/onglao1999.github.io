//
//  ViewController.swift
//  Code_Layout
//
//  Created by Ong_Lao_Ngao on 3/5/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let view1 = UIView()
    let image_Trademark = UIImageView()
    let name = UITextField()
    let phone = UITextField()
    let password = UITextField()
    let repeatPassword = UITextField()
    let registration = UIButton()
    let dctk = UILabel()
    let login = UIButton()
    let stackV = UIStackView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view1_Letgo()
        image_Trademark_Letgo()
        name_Letgo()
        phone_Letgo()
        passWord_Letgo()
        repeatPassword_Letgo()
        registration_Letgo()
        stackV_Letgo()
    }
    func view1_Letgo(){
        view1.backgroundColor = .white
        view.addSubview(view1)
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        view1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        view1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        view1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
    }
    func image_Trademark_Letgo(){
        view1.addSubview(image_Trademark)
        image_Trademark.translatesAutoresizingMaskIntoConstraints = false
        
        
        image_Trademark.topAnchor.constraint(equalTo: view1.topAnchor, constant: 40).isActive = true

        image_Trademark.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: 0.5).isActive = true
        image_Trademark.heightAnchor.constraint(equalTo: view1.heightAnchor, multiplier: 1/4).isActive = true
        image_Trademark.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
        
        image_Trademark.image = UIImage(named: "Trademark")
    }
    func name_Letgo(){
        view1.addSubview(name)
        name.backgroundColor = .white
        name.translatesAutoresizingMaskIntoConstraints = false
        name.topAnchor.constraint(equalTo: image_Trademark.bottomAnchor, constant: 20).isActive = true
        name.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
        name.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: 0.6).isActive = true
        
        name.placeholder = " Họ và tên"
    }
    func phone_Letgo(){
        view1.addSubview(phone)
        phone.backgroundColor = .white
        phone.translatesAutoresizingMaskIntoConstraints = false
        phone.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 20).isActive = true
        phone.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
        phone.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: 0.6).isActive = true
        phone.heightAnchor.constraint(equalTo: name.heightAnchor, multiplier: 1).isActive = true
        phone.placeholder = "Số điện thoại"
        
    }
    func passWord_Letgo(){
        view1.addSubview(password)
        password.backgroundColor = .white
        //.translatesAutoresizingMaskIntoConstraints = false để vô hiệu hóa frame
        password.translatesAutoresizingMaskIntoConstraints = false
        
        password.topAnchor.constraint(equalTo: phone.bottomAnchor, constant: 20).isActive = true
        password.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
        password.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: 0.6).isActive = true
        password.heightAnchor.constraint(equalTo: name.heightAnchor, multiplier: 1).isActive = true
        password.placeholder = " Mật Khẩu"
        
    }
    
    func repeatPassword_Letgo(){
        view1.addSubview(repeatPassword)
        repeatPassword.backgroundColor = .white
        repeatPassword.translatesAutoresizingMaskIntoConstraints = false
        repeatPassword.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 20).isActive = true
        repeatPassword.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
        repeatPassword.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: 0.6).isActive = true
        repeatPassword.heightAnchor.constraint(equalTo: name.heightAnchor, multiplier: 1).isActive = true
        repeatPassword.placeholder = " Nhập lại mật Khẩu"
    }
    
    func registration_Letgo(){
        view1.addSubview(registration)
        registration.backgroundColor = .red
        registration.translatesAutoresizingMaskIntoConstraints = false
        registration.topAnchor.constraint(equalTo: repeatPassword.bottomAnchor, constant: 20).isActive = true
        registration.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
        registration.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: 0.6).isActive = true
        registration.heightAnchor.constraint(equalTo: name.heightAnchor, multiplier: 1).isActive = true
        registration.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: -130).isActive = true
         registration.setTitle("Đăng ký", for: .normal)
    }
    
    func stackV_Letgo(){
        view1.addSubview(stackV)
        stackV.addArrangedSubview(dctk)
        stackV.addArrangedSubview(login)
        dctk.text = "Đã có tài khoản?"
        //dctk.font = UIFont(
        
        login.setTitle("Đăng nhập", for: .normal)
        login.titleLabel?.font = login.titleLabel?.font.withSize(15)
        login.setTitleColor(.red, for: .normal)
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
        stackV.widthAnchor.constraint(equalTo: registration.widthAnchor, multiplier: 0.9).isActive = true
        stackV.heightAnchor.constraint(equalTo: registration.heightAnchor, multiplier: 0.6).isActive = true
        stackV.topAnchor.constraint(equalTo: registration.bottomAnchor, constant: 10).isActive = true
        
    }
}

