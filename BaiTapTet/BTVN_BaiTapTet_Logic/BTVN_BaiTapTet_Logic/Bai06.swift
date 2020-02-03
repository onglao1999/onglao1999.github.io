//
//  Bai06.swift
//  BTVN_BaiTapTet_Logic
//
//  Created by Ong_Lao_Ngao on 1/25/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 6. Chèn phần tử có giá trị X vào mảng sao cho mảng vẫn có thứ tự tăng dần.
 */

import Foundation
func bai06(){
    print("Nhập số lượng phần tử trong mảng: ", terminator: "")
         var n: Int = Int(readLine() ?? "0") ?? 0
         var a: Int
         var mang: [Int] = [0]
         for i in 0..<n {
            print("Nhập phần tử thứ \(i + 1): ", terminator: "")
             a = Int(readLine() ?? "0") ?? 0
             mang.append(a)
         }
         
         
    mang.remove(at: 0)
    print("Nhập giá trị x: ", terminator: "")
    var x: Int = Int(readLine() ?? "0") ?? 0
    mang.append(x)
    
    for i in 0..<mang.count - 1 {
             for j in i..<mang.count {
                 var a: Int
                 if mang[i] > mang[j] {
                     a = mang[i]
                     mang[i] = mang[j]
                     mang[j] = a
                 }
             }
         }
    print("Mảng sau khi thực hiện: ", terminator: "")
    for i in mang {
        print(i, terminator: " ,")
    }
}


