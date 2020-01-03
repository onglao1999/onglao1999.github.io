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

func thoiGian() {
var a: Int = 0
    var b: Int = 0
    var c: Int = 0
print("Nhập thời gian ban đầu : ")
    print("Giờ: ", terminator: "")
a = Int(readLine() ?? "0") ?? 0
 print("Phút: ", terminator: "")
b = Int(readLine() ?? "0") ?? 0
 print("Giây: ", terminator: "")
c = Int(readLine() ?? "0") ?? 0
    var x: Int = 0
    print("Nhập gía trị thời gian: ", terminator: "")
    x = Int(readLine() ?? "0") ?? 0
    var a1: Int
    var b1: Int
    var c1: Int

    x = x + a*3600 + b*60 + c
    a1 = x/3600
    
    b1 = (x - a1*3600)/60
    c1 = (x - a1*3600 - b1*60)
    if a1 > 24 {
        a1 = a1%24
    }
    print("Từ thời gian \(a)giờ\(b)phút\(c)s chạy thêm 10000s thì thời gian hiện tại là \(a1)giờ\(b1)phút\(c1)s")
    
}
