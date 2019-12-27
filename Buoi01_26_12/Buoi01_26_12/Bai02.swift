//
//  Bai02.swift
//  Buoi01_26_12
//
//  Created by Ong_Lao_Ngao on 12/27/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
func tongBP(){
    print("Nhập giá trị a: ")
    let a1: Float = Float(readLine() ?? "0") ?? 0
    print("Nhập giá trị b: ")
    let b1: Float = Float(readLine() ?? "0") ?? 0
    let c1: Float = powf(a1, 2) + powf(b1, 2)
    print("Tổng bình phương 2 số \(a1) và \(b1) = \(c1)")
    
}
