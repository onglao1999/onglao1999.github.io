//
//  B3.swift
//  Buoi_03_02_01
//
//  Created by Ong_Lao_Ngao on 1/2/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.

//3, Liệt kê tất cả các ước số của một số tự nhiên nhập từ bàn phím.

import Foundation
func timUoc(){
    print("Nhập số cần tìm ước : ", terminator: "")
    var a: Int = Int(readLine() ?? "0") ?? 0
    print("Ước số của số \(a) là: ")
    for i in 1...a {
        if a % i == 0 {
            print("\(i)", terminator: " ")
        }
    }
}
