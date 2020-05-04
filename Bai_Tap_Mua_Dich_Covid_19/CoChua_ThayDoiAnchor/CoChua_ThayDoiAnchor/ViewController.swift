//
//  ViewController.swift
//  CoChua_ThayDoiAnchor
//
//  Created by Ong_Lao_Ngao on 3/24/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.yellow
        view.layer.borderWidth = 1
        view.layer.backgroundColor = UIColor.lightGray.cgColor
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var timer = Timer()
    let textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "ABC"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    var topConstraint: NSLayoutConstraint!
    var rightConstraint: NSLayoutConstraint!
    var leftConstraint: NSLayoutConstraint!
    var bottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(containerView)
        
        topConstraint = containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20)
        rightConstraint = containerView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0)
        leftConstraint = containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        bottomConstraint = containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
        
        NSLayoutConstraint.activate([topConstraint, rightConstraint, leftConstraint,bottomConstraint])
        
        timer = Timer.scheduledTimer(timeInterval: 0.04, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
        
        containerView.addSubview(textField)
        
    }
    // vì layout constaint thì khi gọi ở viewDidAppear, các đối tượng mới đầy đủ frame,
    // viết viewDidAppear để tạo hàm viewDidAppear của hệ thống !!!
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        textField.frame = CGRect(x: 0, y: 0, width: containerView.bounds.width - 40, height: 40)
        textField.center = view.center
        let userImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: textField.bounds.height, height: textField.bounds.height - 3))
        userImageView.contentMode = .scaleToFill
        userImageView.image = UIImage(named: "user")
        textField.leftView = userImageView
        textField.leftViewMode = .always
        
        let userImageView1 = UIImageView(frame: CGRect(x: textField.bounds.width - textField.bounds.height, y: 0, width: textField.bounds.height, height: textField.bounds.height))
        userImageView1.contentMode = .scaleToFill
        userImageView1.image = UIImage(named: "user1")
        textField.rightView = userImageView1
        textField.rightViewMode = 
        
    }
    @objc func runTimer(){
        bottomConstraint.constant -= 1
        if bottomConstraint.constant == -20 {
            timer.invalidate()
        }
    }

}

