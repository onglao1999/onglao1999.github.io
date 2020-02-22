//
//  ViewController.swift
//  B2
//
//  Created by Ong_Lao_Ngao on 2/13/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var echCon: UIImageView!
    var a: Int = 1
    var b: Int = 1
    var timer: Timer!
    var h: CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(TraiPhai), userInfo: nil, repeats: true)
    }
    func xoay(){
          echCon.transform = echCon.transform.concatenating(CGAffineTransform(rotationAngle: CGFloat.pi/2))
    }
    @objc func TraiPhai(){
         checkLX()
        if a == 1 {
            echCon.frame.origin.x += 20
            xoay()
            if echCon.frame.origin.x + echCon.frame.size.width >= view.frame.maxX {
                timer.invalidate()
                b = 1
                h = h + 100
                 timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Xuong), userInfo: nil, repeats: true)

            }
        } else {
          if echCon.frame.origin.x <= CGFloat(0){
              timer.invalidate()
            b = 1
            h = h - 100
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Len), userInfo: nil, repeats: true)

          }
    }
    }
    func checkLX(){
        if echCon.frame.origin.y <= CGFloat(0) {
            a = 1
             
        } else {
            if echCon.frame.origin.y + echCon.frame.size.height >= view.frame.maxY {
                a = 0
               
            }
        }
    }
    @objc func PhaiTrai(){
          checkLX()
             if a == 1 {
                 echCon.frame.origin.x -= 20
                xoay()
                 if echCon.frame.origin.x <= CGFloat(0) {
                     timer.invalidate()
                    b = 0
                    h = h + 100
                      timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Xuong), userInfo: nil, repeats: true)

                 }
             } else {
               if echCon.frame.origin.x <= CGFloat(0){
                   timer.invalidate()
                b = 0
                h = h + 100
                 timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Len), userInfo: nil, repeats: true)

               }
         }
    }
    
    @objc func Xuong(){
        if b == 1 {
            echCon.frame.origin.y += 20
            xoay()
            if echCon.center.y >= h || echCon.frame.origin.y + echCon.frame.size.height >= view.frame.maxY {
                timer.invalidate()
                timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(PhaiTrai), userInfo: nil, repeats: true)
            }
        } else {
            echCon.frame.origin.y += 20
            if echCon.center.y >= h || echCon.frame.origin.y + echCon.frame.size.height >= view.frame.maxY {
                timer.invalidate()
                timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(TraiPhai), userInfo: nil, repeats: true)
            }
        }
    }
    
    @objc func Len(){
        if b == 1 {
            echCon.frame.origin.y -= 20
            xoay()
            if echCon.center.y <= h {
                timer.invalidate()
                timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(PhaiTrai), userInfo: nil, repeats: true)
            }
        } else {
            echCon.frame.origin.y += 20
            if echCon.center.y <= h {
                timer.invalidate()
                timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(TraiPhai), userInfo: nil, repeats: true)
            }
        }
    }
}


