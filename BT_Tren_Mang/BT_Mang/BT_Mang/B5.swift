//
//  B5.swift
//  BT_Mang
//
//  Created by Ong_Lao_Ngao on 1/1/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 Viết chương trình nhập vào một mảng số nguyên có N phần tử theo thứ tự giảm dần và số M. Chèn số M vào mảng sao cho mảng vẫn có thứ tự giảm dần. In mảng sau khi chèn
 */

import Foundation
func chenMang(){
    print("Nhập số lượng phần tử trong mảng: ", terminator: "")
    var n: Int = Int(readLine() ?? "0") ?? 0
    print("-Nhập phần tử vào mảng theo thứ tự giảm dần- ")
    var mang: [Int] = [0]
    var a: Int
    for i in 0..<n {
        print("Nhập phần tử thứ \(i + 1): ", terminator: "")
        a = Int(readLine() ?? "0") ?? 0
        mang.append(a)
    }
    mang.remove(at: 0)
    print("Nhập số cân chèn vào mảng: ", terminator: "")
    let m: Int = Int(readLine() ?? "0") ?? 0
    mang.append(m)
    for i in 0..<mang.count {
        
        if mang[mang.count - 1] > mang[i] {
            for j in i..<(mang.count - 1) {
                var a: Int
                a = mang[j]
                mang[j] = mang[mang.count - 1]
                mang[mang.count - 1] = a
            }
            break
        }
        
        }
    
    print("Mang sau khi đã chèn số \(m) là: ", terminator: "")
    for i in 0..<mang.count {
        print(mang[i], terminator: " ")
    }
}
