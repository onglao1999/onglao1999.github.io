//
//  B6.swift
//  Buoi_03_02_01
//
//  Created by Ong_Lao_Ngao on 1/3/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 6, Viết chương trình nhập vào số nguyên dương N (N<=32767), in ra màn hình những số hoàn hảo nhỏ hơn N (số hoàn hảo là số bằng tổng các ước số của nó mà không kể chính nó)
 */

import Foundation
func soHoanHao(){
    print("Nhập số nguyên dương N (N <= 32767): ", terminator: "")
    var n: Int = Int(readLine() ?? "1") ?? 1
    while n > 32767 {
        print("Số N vừa nhập không hợp lệ nhập lại (N <= 32767): ", terminator: "")
        n = Int(readLine() ?? "1") ?? 1
    }
    print("Tập hợp những số nhỏ hơn \(n) là số hoàn hảo là: ", terminator: "")
    for i in 1..<n {
        var dem: Int = 0
        for j in 1..<i {
            if i % j == 0 {
                dem += j
            }
        }
       
        if i == dem {
            print(i, terminator: " ")
        }
    }
}
