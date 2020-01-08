//
//  B7.swift
//  BT_LogicNC
//
//  Created by Ong_Lao_Ngao on 1/6/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//
//B7: Nhập một chuỗi bất kì . Hỏi người nhập muốn tách từ đâu xong tách .VD: "nguyễn viết huy", tách từ viết -> "viết Huy"
import Foundation
func b7(){
    print("Nhập chuỗi từ bàn phím: ", terminator: "")
    var chuoi: String = readLine() ?? " "
    print("Nhập từ bạn muốn tách: ", terminator: "")
    var a: String = readLine() ?? " "
    var mang = chuoi.components(separatedBy: a )
    print("\(a) \(mang[1])")
}
