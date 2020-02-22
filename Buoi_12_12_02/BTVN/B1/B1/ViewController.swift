//
//  ViewController.swift
//  B1
//
//  Created by Ong_Lao_Ngao on 2/12/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 Mỗi lần bóng chạm vào cạnh của View thì sẽ tăng hoặc giảm giá trị x với y tương ứng .
 VD: khi bóng đi từ trái sang phải chếch xuống dưới thì x tăng , y tăng . Khi đập vào cạnh trái của view thì bóng sẽ đi từ phải sang trái hướng chếch xuống tức x giảm , y tăng . tương tự với các TH còn lại
 
 - Khi bóng chạm vào cạnh dưới mà tọa độ của ballbia nằm trong khoảng tọa độ của gôn bóng ( thử và tìm ra toạ độ của gôn là 144 < x < 266) thì hiển thị nút button play và uiimage chiến thắng.
 */

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballbia: UIImageView!
    @IBOutlet weak var banBia: UIView!
    @IBOutlet weak var start: UIButton!
    var timer: Timer!
    
    var x1: Int = Int.random(in: 10...30)
    @IBOutlet weak var g1: UIImageView!
    var y1: Int = Int.random(in: 5...15)
    override func viewDidLoad() {
        super.viewDidLoad()
        ballbia.center = CGPoint(x: view.center.x, y: view.center.y - 350)
        g1.alpha = 0
    }
    
    
    @IBAction func startGame(_ sender: Any) {
        x1 = Int.random(in: 10...30)
        y1 = Int.random(in: 5...15)
        g1.alpha = 0
        ballbia.center = CGPoint(x: view.center.x, y: view.center.y - 350)
        start.alpha = 0
        // start.setTitle("Chiến Thắng", for: .normal)
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(TangTang), userInfo: nil, repeats: true)
    }
    
    @objc func TangTang(){
        ballbia.frame.origin.x += CGFloat(x1)
        ballbia.frame.origin.y += CGFloat(y1)
        
        
        // Kiểm tra xem bi có vào các lỗ không. Vào thì chiến thắng game !!!
        checkWin()
        if ballbia.frame.origin.x + ballbia.frame.size.width >= banBia.frame.maxX && checkWin() == 0{
            timer.invalidate()
            
            timer = Timer.scheduledTimer(timeInterval: 0.07, target: self, selector: #selector(GiamTang), userInfo: nil, repeats: true)
        }
        
        if ballbia.frame.origin.y + ballbia.frame.size.height >= banBia.frame.maxY && checkWin() == 0{
            timer.invalidate()
            
            timer = Timer.scheduledTimer(timeInterval: 0.07, target: self, selector: #selector(TangGiam), userInfo: nil, repeats: true)
        }
        
    }
    
    @objc func GiamTang(){
        ballbia.frame.origin.x -= CGFloat(x1)
        ballbia.frame.origin.y += CGFloat(y1)
        
        // Kiểm tra xem bi có vào các lỗ không. Vào thì chiến thắng game !!!
        checkWin()
        if ballbia.frame.origin.x <= CGFloat(0) && checkWin() == 0{
            timer.invalidate()
            
            timer = Timer.scheduledTimer(timeInterval: 0.07, target: self, selector: #selector(TangTang), userInfo: nil, repeats: true)
        }
        
        if ballbia.frame.origin.y + ballbia.frame.size.height >= banBia.frame.maxY && checkWin() == 0{
            timer.invalidate()
            
            timer = Timer.scheduledTimer(timeInterval: 0.07, target: self, selector: #selector(GiamGiam), userInfo: nil, repeats: true)
        }
        
        
    }
    
    @objc func TangGiam(){
        ballbia.frame.origin.x += CGFloat(x1)
        ballbia.frame.origin.y -= CGFloat(y1)
        
        
        // Kiểm tra xem bi có vào các lỗ không. Vào thì chiến thắng game !!!
        checkWin()
        if ballbia.frame.origin.x + ballbia.frame.size.width >= banBia.frame.maxX {
            timer.invalidate()
            
            timer = Timer.scheduledTimer(timeInterval: 0.07, target: self, selector: #selector(GiamGiam), userInfo: nil, repeats: true)
        }
        
        if ballbia.frame.origin.y <= CGFloat(0) {
            timer.invalidate()
            
            timer = Timer.scheduledTimer(timeInterval: 0.07, target: self, selector: #selector(TangTang), userInfo: nil, repeats: true)
        }
        
    }
    
    @objc func GiamGiam(){
        ballbia.frame.origin.x -= CGFloat(x1)
        ballbia.frame.origin.y -= CGFloat(y1)
        
        
        // Kiểm tra xem bi có vào các lỗ không. Vào thì chiến thắng game !!!
        checkWin()
        if ballbia.frame.origin.x <= CGFloat(0) && checkWin() == 0{
            timer.invalidate()
            
            timer = Timer.scheduledTimer(timeInterval: 0.07, target: self, selector: #selector(TangGiam), userInfo: nil, repeats: true)
        }
        
        if ballbia.frame.origin.y <= CGFloat(0) && checkWin() == 0{
            timer.invalidate()
            
            timer = Timer.scheduledTimer(timeInterval: 0.07, target: self, selector: #selector(GiamTang), userInfo: nil, repeats: true)
        }
    }
    
    func checkWin() -> Int{
        if ballbia.frame.origin.x > CGFloat(144) && ballbia.frame.origin.x < CGFloat(266) && ballbia.frame.origin.y + ballbia.frame.size.height >= banBia.frame.maxY {
            
            timer.invalidate()
            start.setTitle("Chơi Tiếp", for: .normal)
            start.alpha = 1
            g1.alpha = 1
            return 1
        } else {
            return 0
        }
        
    }
    
    
    
}








