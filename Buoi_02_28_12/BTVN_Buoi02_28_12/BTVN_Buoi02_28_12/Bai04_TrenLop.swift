//
//  Bai04_TrenLop.swift
//  BTVN_Buoi02_28_12
//
//  Created by Ong_Lao_Ngao on 12/29/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

//4, Nhập vào thời điểm T gồm 3 số theo dạng : “Giờ : Phút : Giây” và 1 số nguyên X <= 10000
//- Hỏi sau X giây kể từ thời điểm T thì thời gian là bao nhiêu ?
//- Hãy in ra theo dạng “Giờ : Phút : Giây”


import Foundation

func thoiGian(a: Int , b: Int, c:Int) {
    var x: Int = 10000
    var a1: Int
    var b1: Int
    var c1: Int

    x = x + a*3600 + b*60 + c
    a1 = x/3600
    b1 = (x - a1*3600)/60
    c1 = (x - a1*3600 - b1*60)
    print("Từ thời gian \(a)giờ\(b)phút\(c)s chạy thêm 10000s thì thời gian hiện tại là \(a1)giờ\(b1)phút\(c1)s")
    
}
