//
//  Bai05.swift
//  BTVN_BaiTapTet_Logic
//
//  Created by Ong_Lao_Ngao on 1/25/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 5. Đếm số nguyên tố trong đoạn [a, b]
 */

import Foundation
func bai05(){
    print("Nhập giá trị a trong đoạn [a, b]: ", terminator: "")
    var a: Int = Int(readLine() ?? "0") ?? 0
    print("Nhập giá trị  b trong đoạn [a, b]: ", terminator: "")
    var b: Int = Int(readLine() ?? "0") ?? 0
    print("Số nguyên tố trong đoạn [\(a), \(b)] là: ", terminator: "")
    for i in a...b {
        if timSNT(i) == 0 {
            print("\(i) ", terminator: "")
        }
        
    }
}
func timSNT(_ a: Int) -> Int {
    var c: Int = 0
    if a > 2 {
    for i in 2...(a - 1) {
        if a % i == 0 {
            c = 1
            break
        }
    }
    } else{
        if a == 2 {
        
        } else {
            c = 1
        }
    }
    return c
}
