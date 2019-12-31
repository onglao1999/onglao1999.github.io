//
//  B2.swift
//  BT_Mang
//
//  Created by Ong_Lao_Ngao on 12/31/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//
//Viết chương trình nhập vào 1 mảng gồm n số nguyên. Sắp xếp lại mảng theo thứ tự tăng dần và in ra màn hình
import Foundation
func sapXep(){
    var mang: [Int] = [0]
    var a: Int = 0
    print("Nhập số lượng phần tử trong mảng: ", terminator: "")
    let b: Int = Int(readLine() ?? "0") ?? 0
    
    for i in 0..<b {
        print("Nhập phần tử thứ \(i + 1) :", terminator: " ")
        a = Int(readLine() ?? "0") ?? 0
        mang.append(a)
    }
    mang.remove(at: 0)
    for i in 0..<(b-1) {
        
        for j in i..<b {
            if mang[i] > mang[j] {
                var gan: Int
                gan = mang[i]
                mang[i] = mang[j]
                mang[j] = gan
            }
        }
    }
    print("Mảng sau khi được sắp xếp tăng dần là: ", terminator: "")
    for i in 0..<b {
        print("\(mang[i]), ", terminator: "")
    }
}
