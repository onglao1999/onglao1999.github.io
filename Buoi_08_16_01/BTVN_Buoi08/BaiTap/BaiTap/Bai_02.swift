//
//  Bai_02.swift
//  BaiTap
//
//  Created by Ong_Lao_Ngao on 1/17/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//
//2. Chèn phần tử có giá trị X vào phía sau phần tử có giá trị lớn nhất trong mảng.
import Foundation
func chenPT(){
    print("Nhập số lượng phần tử trong mảng: ", terminator: "")
    var sl: Int = Int(readLine() ?? "0") ?? 0
    var mang: [Int] = [0]
    var a: Int
    for i in 0..<sl {
        print("Nhập phần tử thứ \(i + 1): ", terminator: "")
        a = Int(readLine() ?? "0") ?? 0
        mang.append(a)
    }
    mang.remove(at: 0)
    print("Nhập vào số X: ", terminator: "")
    var x: Int = Int(readLine() ?? "0") ?? 0
    var maxIndex: Int = 0
    var maxValue: Int = mang[0]
    for (index, value) in mang.enumerated() {
        if value > maxValue {
            maxValue = value
            maxIndex = index
        }
    }
    mang.insert(x, at: maxIndex + 1)
    print("Mang sau khi đã chèn phần tử \(x): ", terminator: "")
    for i in mang {
        print("\(i) ", terminator: "")
    }
}
