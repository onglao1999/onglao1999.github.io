//
//  B2.swift
//  BTVN_Buoi04_05_01
//
//  Created by Ong_Lao_Ngao on 1/6/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//
//2. Kiểm tra tính đối xứng của một số tự nhiên
import Foundation
func b2(){
    print("Nhập số tự nhiên từ bàn phím: ", terminator: "")
    var a: Int = Int(readLine() ?? "0") ?? 0
    var b: Int = a
    var mang: [Int] = [0]
    while a != 0 {
        mang.append(a % 10)
        a /= 10
    }
    mang.remove(at: 0)
    var t: Int = 0
    for i in 0..<(mang.count / 2) {
        if mang[i] != mang[mang.count - i - 1] {
            print("Số \(b) không có tính đối xứng !!!")
            t = 1
            break
        }
    }
    if t == 0 {
        print("Số \(b) có tính đối xứng")
    }
}
