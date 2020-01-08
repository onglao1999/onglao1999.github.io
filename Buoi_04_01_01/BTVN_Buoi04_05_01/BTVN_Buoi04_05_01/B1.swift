//
//  B1.swift
//  BTVN_Buoi04_05_01
//
//  Created by Ong_Lao_Ngao on 1/5/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//1. Tính tổng các chữ số của một số tự nhiên

import Foundation
func tongSTN(){
    print("Nhập số tự nhiên từ bàn phím: ", terminator: "")
    var a: Int = Int(readLine() ?? "0") ?? 0
    var tong: Int = 0
    if a == 0 {
        print("Tổng các chữ số của số \(a) bằng: 0")
    } else {
    while a != 0 {
        tong += a % 10
        a /= 10
    }
         print("Tổng các chữ số của số \(a) bằng: \(tong)")
    }
   
}
