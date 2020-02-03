//
//  Bai_01.swift
//  BaiTap
//
//  Created by Ong_Lao_Ngao on 1/17/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 Nhập vào 1 năm, trả về các ngày tương ứng với các tháng .
 Hiển thị số ngày của tháng. Với tháng 2 có 29 ngày nếu là năm nhuận, 28 ngày nếu là năm không nhuận.
 */

import Foundation
func bai01(){
    print("Nhập vào 1 năm cần xét: ", terminator: "")
    var a: Int = Int(readLine() ?? "0") ?? 0
    if a%4 == 0 && a%100 != 0 || a%400 == 0{
        print("Tháng có 29 ngày: 2")
        print("Tháng có 30 ngày: 4, 6, 9 ,11" )
        print("Tháng có 31 ngày: 1, 3, 5, 7, 8, 10, 12")
    }else{
        print("Tháng có 28 ngày: 2")
               print("Tháng có 30 ngày: 4, 6, 9 ,11" )
               print("Tháng có 31 ngày: 1, 3, 5, 7, 8, 10, 12")
    }
}
