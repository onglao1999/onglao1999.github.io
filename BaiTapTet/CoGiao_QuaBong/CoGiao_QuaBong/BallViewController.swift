//
//  BallViewController.swift
//  CoGiao_QuaBong
//
//  Created by Ong_Lao_Ngao on 2/11/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class BallViewController: UIViewController {
    // khởi tạo đối tượng imageView
    var ballImageView: UIImageView!
    var count: Float = 0
    var timer: Timer!
    var h: CGFloat!
    override func viewDidLoad() {
        super.viewDidLoad()

        ballImageView = UIImageView(frame: CGRect(x: 0,
                                                  y: 0,
                                                  width: 100,
                                                  height: 100))
        //ballImageView.center.x = view.center.x
        h = self.ballImageView.frame.origin.y
        //dặt ảnh cho imageView
        ballImageView.image = UIImage(named: "ball" )
        ballImageView.contentMode = .scaleToFill
        
        // thêm imageView vào superview
        view.addSubview(ballImageView)
        timer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)
        
    }
    

    
    
    
    
    @objc func runLoop(){
       
        ballImageView.frame.origin.y += 10
        // 46 47 để quay uiimage !!!
        count += 1
        self.ballImageView.transform = CGAffineTransform(rotationAngle: (CGFloat(count*Float.pi / 2)))
        //
        
       //kiểm tra dừng quả bóng
       if ballImageView.frame.origin.y > view.frame.maxY - ballImageView.frame.height{
           timer.invalidate()
           timer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(runLoopPhai), userInfo: nil, repeats: true)
       }
    }
    
     
    
    @objc func runLoopPhai(){
        ballImageView.frame.origin.x += 10
        count += 1
               self.ballImageView.transform = CGAffineTransform(rotationAngle: (CGFloat(count*Float.pi / 2)))
        if ballImageView.frame.origin.x + ballImageView.frame.width >= view.frame.width {
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(runLoopNguoc), userInfo: nil, repeats: true)
        }
    }
    
    @objc func runLoopNguoc(){
           ballImageView.frame.origin.y -= 10
           count += 1
                  self.ballImageView.transform = CGAffineTransform(rotationAngle: (CGFloat(count*Float.pi / 2)))
           if ballImageView.frame.origin.y <= CGFloat(0) {
               timer.invalidate()
               timer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(runLoopTrai), userInfo: nil, repeats: true)
           }
          
       }
    
    @objc func runLoopTrai(){
        ballImageView.frame.origin.x -= 10
        count += 1
               self.ballImageView.transform = CGAffineTransform(rotationAngle: (CGFloat(count*Float.pi / 2)))
        if ballImageView.frame.origin.x <= CGFloat(0) {
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)
        }
    }
    
   
}


