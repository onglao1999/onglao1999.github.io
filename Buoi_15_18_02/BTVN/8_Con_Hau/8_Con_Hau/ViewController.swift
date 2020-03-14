//
//  ViewController.swift
//  8_Con_Hau
//
//  Created by Ong_Lao_Ngao on 2/19/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var vien: CGFloat = 10
    var n: Int = 8 // hàng cột trong ô cờ
    let ChessView = UIView()
    let chonVien = UILabel()
    
    //    var counttag: Int = 0
    //    var images = [UIImageView]()
    override func viewDidLoad() {
        super.viewDidLoad()
        banCo()
        conHau(kTra: true, row: 1, column: 1)
        
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
            ChessView.addSubview(conHauImageView)
            UIView.animate(withDuration: 1){
                conHauImageView.frame = CGRect(x: self.vien + CGFloat(column ) * a, y: self.vien + CGFloat(row ) * a, width: a, height: a)
            }
        }
    }
    var mangLon: [Int]!
    var mangNho: [Int] = [0, 0, 0 ,0 ,0 ,0 ,0 ,0]
    var mangTD: [Int]!
    var sumTH: Int = 0
    func luaChon(_ hangDangXet: Int,_ cotDangXet: Int){
        for i in cotDangXet..<n {
            if ktDK(i, hangDangXet) {
                mangNho[hangDangXet] = cotDangXet
                
                if cotDangXet == n - 1 {
                    for e in mangNho {
                        mangLon.append(e)
                    }
                }
                luaChon(hangDangXet + 1, mangTD[hangDangXet + 1])
            }
        }
        
        luaChon(mangNho[hangDangXet - 1], mangTD[hangDangXet - 1])
    }
    
    func ktDK(_ i: Int,_ hangDangXet: Int) -> Bool{
        if hangDangXet == 0 {
            return true
        }
        for j in 0..<hangDangXet {
            if true {
                return false
            }
        }
        
        return true
    }
}
