//
//  B3.swift
//  BT_LogicNC
//
//  Created by Ong_Lao_Ngao on 1/6/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//
//B3: Đếm có bao nhiêu khoảng trắng trong chuỗi
import Foundation
func b3(){
    print("Nhập chuỗi từ bàn phím: ", terminator: "")
    var chuoi: String = readLine() ?? " "
    var dem: Int = 0
    for i in chuoi {
        if i == " " {
            dem += 1
        }
    }
    print("Trong chuỗi vừa nhập có \(dem) khoảng trắng !!! ")
}
