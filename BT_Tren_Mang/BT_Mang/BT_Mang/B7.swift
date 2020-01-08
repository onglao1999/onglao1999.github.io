//
//  B7.swift
//  BT_Mang
//
//  Created by Ong_Lao_Ngao on 1/4/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 viết chương trình kiểm tra số chính phương trong mảng 1 chiều
 */

import Foundation
func soChinhPhuong(){
    print("Nhập số phần tử: ", terminator: "")
       var n: Int = Int(readLine() ?? "0") ?? 0
       var mang: [Int] = [0]
       var a: Int
       // nhập phần tử vào mảng
       for i in 0..<n {
           print("Nhập phần tử thứ \(i + 1): ", terminator: "")
           a = Int(readLine() ?? "0") ?? 0
           mang.append(a)
       }
       mang.remove(at: 0)
    print("Tập hợp những phần tử là số chính phương trong mảng là:")
    var dem: Int = 0
    for i in 0..<n {
        var y: Int = mang[i]
        var c: Float = Float(sqrt(Float(y)))
        if c.truncatingRemainder(dividingBy: 1.0) == 0.0 {
            print("\(mang[i]) ", terminator: "")
            dem += 1
        }
    }
    if dem == 0 {
        print("KHÔNG TỒN TẠI SỐ CHÍNH PHƯƠNG TRONG MẢNG ĐANG XÉT !!!")
    }
    print("")
}
