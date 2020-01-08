//
//  B4.swift
//  BT_LogicNC
//
//  Created by Ong_Lao_Ngao on 1/6/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//
//B4: Nhập vào chuỗi. Loại bảo những khoảng trắng thừa trong chuỗi
import Foundation
func b4(){
    print("Nhập chuỗi từ bàn phím: ", terminator: "")
    var chuoi: String = readLine() ?? " "
    var mang: [Character] = [" "]
    for i in chuoi {
        mang.append(i)
    }
    mang.remove(at: 0)
    while mang[0] == " " {
        mang.remove(at: 0)
    }
    
    while mang[mang.count - 1] == " " {
        mang.remove(at: mang.count - 1)
    }
    var i: Int = 0
    var dem: Int = 0
    var d: Int = mang.count
    while true {
        if mang[i] == " " && mang[i + 1] == " " {
            mang.remove(at: i)
        } else {
            i += 1
        }
        dem += 1
        if dem == d {
            break
        }
    }
    
   chuoi = String(mang)
    print(chuoi)
}
