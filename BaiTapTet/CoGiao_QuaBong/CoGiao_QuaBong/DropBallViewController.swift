//
//  DropBallViewController.swift
//  CoGiao_QuaBong
//
//  Created by Ong_Lao_Ngao on 2/13/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class DropBallViewController: UIViewController {
    var ballImageView : UIImageView!
    var timer: Timer!
    var yBanDau: CGFloat = 100
    
    // gia tốc
    var a: CGFloat = 1.0
    // vận tốc v ban đầu
    var v: CGFloat = 0.0
    // biến y để lưu giá trị tọa độ y thay đổi
    var y: CGFloat = 0.0
    // chiều cao màn hình
    var heighScreen : CGFloat!
    // đường kính quả bóng
    var radius: CGFloat = 80
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        ballImageView = UIImageView(frame: CGRect(x: 150, y: yBanDau, width: 100, height: 100))
        ballImageView.image = UIImage(named: "ball")
        ballImageView.contentMode = .scaleAspectFit
        ballImageView.center.x = view.center.x
        view.addSubview(ballImageView)
        
        y = yBanDau
        heighScreen = view.bounds.height
        
        // khởi tạo timer
        timer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)
        
    }
    
    @objc func runLoop(){
        v = v + a
        y = y + v
        print(y)
        
        // check điều kiện đề điều kiện
        if y > heighScreen - radius {
            y = heighScreen - radius
            v = -v * 0.5
            print(y)
        }
        
        ballImageView.center = CGPoint(x: ballImageView.center.x, y: y)
    }

}
