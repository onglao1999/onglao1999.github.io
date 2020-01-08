//
//  B5.swift
//  BT_LogicNC
//
//  Created by Ong_Lao_Ngao on 1/6/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//
//B5: Đổi mỗi kí tự đầu tiên của mỗi từ thành chữ in hoa
import Foundation
func b5(){
    print("Nhập chuỗi từ bàn phím: ", terminator: "")
    var chuoi: String = readLine() ?? " "
    var mang: [Character] = [" "]
    for i in chuoi {
        mang.append(i)
    }
    mang.remove(at: 0)
    var c: String = String(mang[0])
    
    mang[0] = Character(c.uppercased())
    for i in 0..<mang.count - 1{
        if mang[i] == " " {
            c = String(mang[i + 1])
           mang[i + 1] = Character(c.uppercased())
        }
    }
    chuoi = String(mang)
    print(chuoi)
}
