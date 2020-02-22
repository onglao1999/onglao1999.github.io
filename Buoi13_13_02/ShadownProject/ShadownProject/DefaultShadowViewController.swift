//
//  DefaultShadowViewController.swift
//  ShadownProject
//
//  Created by Ong_Lao_Ngao on 2/13/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class DefaultShadowViewController: UIViewController {
    // một cách để khởi tạo đối tượng
    // ưu điểm của cách này là thuộc tính của đối tượng viết tập trung 1 chỗ, dễ quản lí
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "chienHam")
      //  imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
        return imageView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.center = view.center
        view.addSubview(imageView)
//        defalutShadow()
       // ovalShadow()
        //depthShadown()
        lamMau()
    }
    
    func defalutShadow(){
        // thêm shadown cho imageView
        imageView.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: imageView.layer.frame.width, height: imageView.frame.height)).cgPath
        imageView.layer.shadowOpacity = 1
        
        imageView.layer.shadowOffset = CGSize.zero
    }
    
    func ovalShadow(){
        let rect = CGRect(x: 0, y: imageView.frame.height + 30, width: imageView.frame.width, height: 60)
        imageView.layer.shadowPath = UIBezierPath(ovalIn: rect).cgPath
        imageView.layer.shadowOpacity = 0.5
    }
    
    func depthShadown(){
        let width = imageView.frame.width
        let heigh = imageView.frame.height
        let shadowRadius: CGFloat = 5
        let shadowWidth: CGFloat = 1.25
        let shadowHeight: CGFloat = 0.5
        
        let shadowPath = UIBezierPath()
        // mỗi lầm addLine thì sẽ tạo 1 điểm trên view . nó sẽ tự liên kết các điểm addline để tạo thành 1 vùng hiển thị
        shadowPath.move(to: CGPoint(x: shadowRadius/2, y: heigh - shadowRadius/2))
        shadowPath.addLine(to: CGPoint(x: width - shadowRadius/2 , y: heigh - shadowRadius/2))

        shadowPath.addLine(to: CGPoint(x: width - shadowRadius/2  + 100, y: heigh - shadowRadius/2 + 200))
        //shadowPath.addLine(to: CGPoint(x: width*shadowWidth, y: heigh + heigh*shadowHeight))
        
        shadowPath.addLine(to: CGPoint(x: shadowRadius/2 - 100, y: heigh - shadowRadius/2 + 200))
        
        //shadowPath.addLine(to: CGPoint(x: width*(-shadowRadius-1)-50, y: heigh + heigh*shadowHeight))
        
//
//        shadowPath.move(to: CGPoint(x: 0, y: 0))
//        shadowPath.addLine(to: CGPoint(x: width - shadowRadius/2, y: heigh - shadowRadius/2))
//        shadowPath.addLine(to: )
//
        imageView.layer.shadowPath = shadowPath.cgPath
        
        //shadowOpacity độ mờ
        imageView.layer.shadowOpacity = 0.5
        
        // bán kính
        imageView.layer.shadowRadius = shadowRadius
        
        //
        imageView.layer.shadowOffset = .zero
        
    
    }
    
    func lamMau(){
         let shadowPath = UIBezierPath()
        let width = imageView.frame.width
               let heigh = imageView.frame.height
               let shadowRadius: CGFloat = 5
               let shadowWidth: CGFloat = 1.25
               let shadowHeight: CGFloat = 0.5
        shadowPath.move(to: CGPoint(x: shadowRadius/2, y: heigh - shadowRadius/2))
        shadowPath.addLine(to: CGPoint(x: view.frame.maxX + 100, y: view.frame.maxY))
        shadowPath.addLine(to: CGPoint(x: view.frame.maxX + 400, y: view.frame.maxY))
        shadowPath.addLine(to: CGPoint(x: width, y: 0 ))
              imageView.layer.shadowPath = shadowPath.cgPath
              
              //shadowOpacity độ mờ
              imageView.layer.shadowOpacity = 0.5
              
              // bán kính
        imageView.layer.shadowRadius = 0.2
              
              //
              imageView.layer.shadowOffset = .zero
              
    }
}
