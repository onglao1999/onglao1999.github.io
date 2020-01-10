//
//  ViewController.swift
//  FirstProject
//
//  Created by Ong_Lao_Ngao on 1/9/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Đổ màu background
        myView.backgroundColor = UIColor.yellow
        
        //Set tọa độ và kích thước
        myView.frame = CGRect(x: 50, y: 50, width: 200, height: 200)
        //So sánh tọa độ với cha của nó
        //myView.bounds = CGRect(x: 80, y: 80, width: 100, height: 100)
        //bounds so sánh tọa độ với chính nó
        
        //Xét cho myView nằm trung tâm với view
        //View là superview của clas ViewController
        myView.center = view.center
        // độ mờ
               myView.alpha = 0.7
        // bo tròn
        myView.layer.cornerRadius = 20
        
        // đổ màu myView2
        myView.backgroundColor = UIColor.purple
        myView.frame = CGRect(x: myView.frame.size.width / 2, y: myView.frame.size.height / 2, width: 200, height: 200)
        
        
        // màu đổ bóng
        myView.layer.shadowColor = UIColor.red.cgColor
        // độ trong suốt đổ bóng
        myView.layer.shadowOpacity = 1
        // khu vực đổ bóng = zezo đổ bóng cân UIView , còn CGSize thì đổ bóng 1 chiều
        myView.layer.shadowOffset = CGSize(width: 20, height: 10)
        // bo tròn phần đổ bóng
        myView.layer.shadowRadius = 10
    }
   
    func configProperties(){
        // độ mờ
        myView.alpha = 0.7
        
        // bo tròn
        myView.layer.cornerRadius = 20
        
        // bo thành hình tròn
        myView.layer.cornerRadius = 100 // nếu để cornerRadius là số thì khi width thay đổi, chỗ này cũng phải thay đổi
        
        myView.layer.cornerRadius = myView.frame.size.width / 2 // công thức bo tròn, là radius bằng nửa width của đối tượng đó (đối tượng phải là hình vuông mới có thể bo thành hình tròn)
    }

    
}

