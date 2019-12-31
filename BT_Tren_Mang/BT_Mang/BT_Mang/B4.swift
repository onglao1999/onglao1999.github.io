//
//  B4.swift
//  BT_Mang
//
//  Created by Ong_Lao_Ngao on 12/31/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//Nhập mảng A có n phần tử . Tìm phần tử xuất hiện nhiều nhất trong mảng

import Foundation
func timPT(){
    var a: [Int] = [0]
    print("Nhập số phần tử của mảng : ", terminator: "")
    var n: Int = Int(readLine() ?? "0") ?? 0
    var b: Int
    for i in 0..<n {
        print("Nhập phần tử thứ \(i + 1): ", terminator: "")
        b = Int(readLine() ?? "0") ?? 0
        a.append(b)
    }
    a.remove(at: 0)
    var a1: [Int] = a
    var max: Int = 0
    var id: Int = 0
    for i in 0..<a1.count {
        var thu: Int = 0
        var ll: Int = 0
        for j in 0..<i {
            if a1[i] == a1[j] {
                thu += 1
            }
        }
        if thu != 0 {
            continue
        }
        
        for j1 in i..<a1.count {
            if a1[i] == a1[j1] {
                ll += 1
            }
        }
        if ll > max {
            max = ll
            id = a1[i]
        }
    }
    print("Vậy phần tử \(id) xuất hiện nhiều nhất trong mảng đang xét với \(max) lần xuất hiện")
}
