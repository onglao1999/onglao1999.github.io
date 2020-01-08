//
//  B6.swift
//  BT_Mang
//
//  Created by Ong_Lao_Ngao on 1/4/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 Nhập vào mảng 1 chiều gồm 1 dãy số nguyên có N phần tử. Hãy xoá các phần tử trùng nhau trong mảng và in kết quả ra màn hình
 */

import Foundation
func ptTrungNhau(){
    print("Nhập số phần tử: ", terminator: "")
    var n: Int = Int(readLine() ?? "0") ?? 0
    var mang: [Int] = [0]
    var a: Int
    // nhập phần tử vào mảng
    for i in 0..<n {
        print("Nhập phần tử thứ \(i + 1): ", terminator: "")
        a = Int(readLine() ?? "0") ?? 0
        mang.append(a)
    }
    mang.remove(at: 0)
    var i: Int = 0
    var j: Int = 1
    while i < mang.count {
        while  j < (mang.count - 1){
            if mang[i] == mang[j] {
                mang.remove(at: j)
            }
            j += 1
        }
        i += 1
    }
    print("Mảng sau khi đã xoá các phần tử trùng nhau: ", terminator: "")
    for i in mang {
        print(i, terminator: " ")
    }
}
