//
//  B2.swift
//  BT_LogicNC
//
//  Created by Ong_Lao_Ngao on 1/6/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//
//B2: Nhập vào giá trị X. Viết hàm xoá phần tử trong mảng có giá trị gần X nhất
import Foundation
func b2(){
    print("Nhập số lượng phần tử trong mảng: ", terminator: "")
    var n: Int = Int(readLine() ?? "0") ?? 0
    var mang: [Int] = [0]
    var a: Int
    //Nhập pt
    for i in 0..<n {
        print("Nhập phần tử thứ \(i + 1): ", terminator: "")
        a = Int(readLine() ?? "0") ?? 0
        mang.append(a)
    }
    mang.remove(at: 0)
    print("Nhập số bất kì: ", terminator: "")
    var x: Int = Int(readLine() ?? "0") ?? 0
    var m: Int = 0
    if mang[0] - x < 0 {
        m = x - mang[0]
    } else{
        m = mang[0] - x
    }
    
    var m1: Int = 0
    for (index, value) in mang.enumerated() {
        var s: Int
        if value - x < 0 {
         s = x - value
        } else{
            s = value - x
        }
        if s < m {
            m = s
            m1 = index
        }
    }
    
    mang.remove(at: m1)
    print("Mang sau khi đã xoá phần tử gần \(x) nhất là: ", terminator: "")
    for i in mang {
        print(i, terminator: " ")
    }
    print("")
}
