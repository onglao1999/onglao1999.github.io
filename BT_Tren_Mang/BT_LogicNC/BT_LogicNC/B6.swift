//
//  B6.swift
//  BT_LogicNC
//
//  Created by Ong_Lao_Ngao on 1/6/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//
//B6: Viết chương trình đảo vị trí từ đầu và từ cuối
import Foundation
func b6(){
    print("Nhập chuỗi từ bàn phím: ", terminator: "")
    var chuoi: String = readLine() ?? " "
    var mang: [Character] = [" "]
    for i in chuoi {
        mang.append(i)
    }
    mang.remove(at: 0)
    var tg: Character
    tg = mang[0]
    tg = mang[0]
    mang[0] = mang[mang.count - 1]
    mang[mang.count - 1] = tg
    chuoi = String(mang)
    print(chuoi)
}
