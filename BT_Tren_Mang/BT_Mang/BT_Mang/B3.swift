//
//  B3.swift
//  BT_Mang
//
//  Created by Ong_Lao_Ngao on 12/31/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
// Viết chương trình nhập vào một mảng A gồm n số nguyên và nhập thêm 1 số nguyên x . Kiểm tra xem phần tử x có trong mảng A hay không

import Foundation
func kiemTra(){
    print("Nhập vào số lượng phần tử trong mảng: ", terminator: "")
    let b: Int = Int(readLine() ?? "0") ?? 0
    var a: Int
    var mang: [Int] = [0]
    
    for i in 0..<b {
        print("Nhập phần tử thứ \(i + 1): ", terminator: "")
        a = Int(readLine() ?? "0") ?? 0
        mang.append(a)
    }
    mang.remove(at: 0)
    print("Nhập số cần kiểm tra: ", terminator: "")
    let x: Int = Int(readLine() ?? "0") ?? 0
    var thu: Int = 0
    for i in mang {
        if x == i {
            print("Phần tử \(x) có ở trong mảng đang xét.")
            break
        }
        thu += 1
    }
    if thu == mang.count {
        print("Phần tử \(x) không ở trong mảng đang xét.")
    }
}
