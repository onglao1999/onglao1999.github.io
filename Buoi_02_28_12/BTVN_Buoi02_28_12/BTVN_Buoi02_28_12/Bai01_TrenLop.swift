//
//  Bai01_TrenLop.swift
//  BTVN_Buoi02_28_12
//
//  Created by Ong_Lao_Ngao on 12/29/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
//1, Viết chương trình nhập vào 3 số nguyên a, b, c. Tìm, in ra số lớn nhất, số bé nhất.

func timSoLonBe(a: Int, b: Int, c: Int){
    var max: Int
    var min: Int
    max = a
    min = b
    
    if b > max { max = b }
    if c > max { max = c}
    
    if b < min {min = b}
    if c < min {min = c }

    print("Số lớn nhất trong 3 số \(a), \(b), \(c) là số : \(max)")
    print("Số nhỏ nhất trong 3 số \(a), \(b), \(c) là số : \(min)")

    
    
}
