//
//  B2.swift
//  Buoi_03_02_01
//
//  Created by Ong_Lao_Ngao on 1/2/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 2, Viết chương trình nhập vào một số nguyên dương không lớn hơn 10000, in ra màn hình chữ số lớn thứ nhì có trong số đó (ví dụ nhập n = 1356 in ra 5). Trong trường hợp không có số lớn thứ nhì, thì in ra số lớn nhất.
 */

import Foundation
func timSoThuNhi(){
    
    var n: Int = 11000
    while n > 10000{
        print("Nhập số n nguyên dương cần xét (n < 10000): ", terminator: "")
        n = Int(readLine() ?? "0") ?? 0
        var a: Int = n % 100 - n % 10
        if a/10 == 0 {
            print("Không có sô lớn thứ 2. số lớn nhất trong số đã cho là: \(n%10)")
        } else{
       print("Số lớn thứ 2 trong số đã cho là: \(a/10)")
        }
}
}
