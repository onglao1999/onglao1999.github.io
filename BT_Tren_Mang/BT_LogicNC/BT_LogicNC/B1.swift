//
//  B1.swift
//  BT_LogicNC
//
//  Created by Ong_Lao_Ngao on 1/5/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//
//B1: Đổi sang hệ nhị phân của số nguyên dương
/*
 Định Hướng : chia số đã nhập cho 2 lấy phần dư
 */
import Foundation
func b1(){
    print("Nhập số cần đổi sang hệ nhị phân: ", terminator: "")
    var a: Int = Int(readLine() ?? "0") ?? 0
    var i: Int = 1
    print("Số \(a) chuyển thành hệ nhị phân : ", terminator: "")
    while i != 0 {
        
        if a / 2 == 0 {
            i = 0
        } else{
            print("\(a % 2)", terminator: "")
        a /= 2
                }
    }
    print("")
}
