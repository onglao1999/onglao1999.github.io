//
//  B1.swift
//  BT_Mang
//
//  Created by Ong_Lao_Ngao on 12/31/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//
//Viết chương trình nhập mảng các số thực và xuất các phần tử âm trong mảng.

import Foundation

func soATM(){
    var mang: [Float] = [0]
    var a: Float
    print("Nhập số lượng phần tử của mảng: ", terminator: "")
    let b: Int = Int(readLine() ?? "0") ?? 0
    print("---NHẬP PHẦN TỬ CỦA MẢNG---")
    
    for i in 0..<b {
        print("Nhập phần tử thứ \(i + 1): ", terminator: "")
        a = Float(readLine() ?? "0") ?? 0
        mang.append(a)
    }
    mang.remove(at: 0)
    print("Phần tử âm trong mảng là:", terminator: " ")
    for i in 0..<b {
        if mang[i] < 0 {
            print("\(mang[i]) ,", terminator: "")
        }
    }
}
