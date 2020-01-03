//
//  B1.swift
//  Buoi_03_02_01
//
//  Created by Ong_Lao_Ngao on 1/2/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//1,Sắp xếp mảng số nguyên theo chiều tăng dần và giảm dần

import Foundation
func sapXep(){
    var mang: [Int] = [0,3,2,5,4,7,6]
    
    //Tăng dần
    for i in 0..<mang.count - 1 {
        for j in i..<mang.count {
            if mang[i]>mang[j] {
                var a: Int
                a = mang[i]
                mang[i] = mang[j]
                mang[j] = a
            }
        }
    }
    print("mang sau khi sap xep tang dan la: ", terminator: "")
    for i in mang {
        print(i, terminator: " ")
    }
    print("")
    //Giam dần
    for i in 0..<mang.count - 1 {
        for j in i..<mang.count {
            if mang[i]<mang[j] {
                var a: Int
                a = mang[i]
                mang[i] = mang[j]
                mang[j] = a
            }
        }
    }
    print("mang sau khi sap xep giam dan la: ", terminator: "")
    for i in mang {
        print(i, terminator: " ")
    }
    print("")
}
