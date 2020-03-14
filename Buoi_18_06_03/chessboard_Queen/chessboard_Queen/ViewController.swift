//
//  ViewController.swift
//  chessboard_Queen
//
//  Created by Ong_Lao_Ngao on 3/6/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var vien: CGFloat = 10
    var n: Int = 8 // hàng cột trong ô cờ
    let ChessView = UIView()
    let chonVien = UILabel()
    var timer: Timer!
    var timer1: Timer!
    var timer2: Timer!
    var timer3: Timer!
    var mang = [UIImageView]()
    override func viewDidLoad() {
        super.viewDidLoad()
        banCo()
        //conHau(kTra: true, row: 5, column: 0)
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(Top), userInfo: nil, repeats: true)
        
    }
    var dem: Int = 0
    var a: Int = -1
    var b: Int = 7
    var hang: Int = 0
    var cot: Int = 0
    var chieuQuanHau: Bool = true
    @objc func Top(){
        a += 1
        dem += 1
        for i in mang {
                    i.removeFromSuperview()
                }
                conHau(kTra: true, row: hang, column: cot + a)
                demOCo()
                if a == b && chieuQuanHau == true{
                    timer.invalidate()
                    b = b - 2
                    a = -1
                    hang = hang + 1
                    cot = cot + 1
                    timer1 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(Right), userInfo: nil, repeats: true)
                }
        if a == b && chieuQuanHau == false {
            demOCo()
            b = b + 2
            a = -1
            hang = hang - 1
            cot = cot - 1
            timer2 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(Bottom), userInfo: nil, repeats: true)
        }
        
    }
    
    @objc func Right(){
        a += 1
        dem += 1
        for i in mang {
                    i.removeFromSuperview()
                }
                conHau(kTra: true, row: hang + a, column: 7 - cot + 1)
                demOCo()
                if a == b + 1 && chieuQuanHau == true{
                    timer1.invalidate()
                    a = -1
                    
                    timer2 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(Bottom), userInfo: nil, repeats: true)
                }
        if a == b + 1 && chieuQuanHau == false {
            timer1.invalidate()
            a = -1
            timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(Top), userInfo: nil, repeats: true)
        }
                
    }
    
    @objc func Bottom(){
       a += 1
       dem += 1
       for i in mang {
                   i.removeFromSuperview()
               }
               conHau(kTra: true, row: 7 - hang + 1, column: 7 - cot - a)
        demOCo()
               if a == b + 1 && chieuQuanHau == true{
                   timer2.invalidate()
                   
                   a = -1
                   timer3 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(Left), userInfo: nil, repeats: true)
               }
        if a == b + 1 && chieuQuanHau == false{
            timer2.invalidate()
            
            a = -1
             timer1 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(Right), userInfo: nil, repeats: true)
    }
    }
    @objc func Left(){
        a += 1
              dem += 1
              for i in mang {
                          i.removeFromSuperview()
                      }
                      conHau(kTra: true, row: 7 - hang - a, column: cot - 1)
        demOCo()
                      if a == b && chieuQuanHau == true{
                          timer3.invalidate()
                          
                          a = -1
                          timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(Top), userInfo: nil, repeats: true)
                      }
        if a == b && chieuQuanHau == false {
            timer3.invalidate()
            
            a = -1
            timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(Top), userInfo: nil, repeats: true)
        }
        
    }
    
    func demOCo() -> Bool{
        print(dem)
//        if dem == 64 {
//            dem = 0
//
//            if chieuQuanHau {
//                chieuQuanHau = false
//            } else {
//                chieuQuanHau = true
//            }
//            return true
//        }
        return false
    }

    func banCo(){

        ChessView.frame.size = CGSize(width: view.frame.width, height: view.frame.width)
        ChessView.center = view.center
        ChessView.backgroundColor = .blue
        view.addSubview(ChessView)
        for i in 0..<8 {
            for j in 0..<8 {
                //                counttag += 1
                let mau: Bool = (i + j)%2 == 1 ? true : false

                oCo(row: i, column: j, width: ChessView.frame.maxX/CGFloat(n), height: ChessView.frame.maxX/CGFloat(n), mau: mau )
            }
        }
    }

    func oCo(row: Int, column: Int, width: CGFloat, height: CGFloat, mau: Bool){
        let oCoView = UIView()
        var a = (view.frame.maxX - vien * 2)/8
        
        oCoView.frame = CGRect(x: vien + CGFloat(column ) * a, y: vien + CGFloat(row ) * a, width: a, height: a)
        oCoView.backgroundColor = mau ? UIColor.black : UIColor.white
        ChessView.addSubview(oCoView)
    }
    
    func conHau(kTra: Bool, row: Int, column: Int){
        var a = (view.frame.maxX - vien * 2)/8
        let conHauImageView = UIImageView(image: UIImage(named: "queen"))
        if kTra {
            conHauImageView.frame = CGRect(x: vien + CGFloat(column ) * a, y: vien + CGFloat(row ) * a, width: 0, height: 0)
            mang.append(conHauImageView)
            ChessView.addSubview(conHauImageView)
            
            conHauImageView.frame = CGRect(x: self.vien + CGFloat(column ) * a, y: self.vien + CGFloat(row ) * a, width: a, height: a)
            
        }
    }
}

