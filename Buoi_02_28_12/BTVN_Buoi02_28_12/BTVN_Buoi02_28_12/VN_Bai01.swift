//
//  VN_Bai01.swift
//  BTVN_Buoi02_28_12
//
//  Created by Ong_Lao_Ngao on 12/29/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

/* 1. Nhập vào điểm trung bình của học sinh và in ra màn hình xếp loại tương ứng với mức điểm đó
(xếp hạng: (>8: Giỏi,  [5, 8): Trung bình, <5: Khá]), nếu nhập ngoài khoảng [1, 10] thì yêu cầu nhập lại)*/

import Foundation
func diemTB(){
    var a: Float
    repeat{
        print("Nhập điểm trung bình : ", terminator: " ")
        a = Float(readLine() ?? "0") ?? 0
        
    } while (a < 0 || a > 10)
    
    if a == 8.0 || a > 8.0 {
        print("Giỏi")
    } else {
        if a < 5 {
            print("Trung Bình")
        } else{
            print("Khá")
        }
    }
}
