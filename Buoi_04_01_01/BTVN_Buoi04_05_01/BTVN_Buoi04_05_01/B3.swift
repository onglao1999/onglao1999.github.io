//
//  B3.swift
//  BTVN_Buoi04_05_01
//
//  Created by Ong_Lao_Ngao on 1/6/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//
/*
 3. Viết một minigame random các số từ 1 đến 100, cho người dùng đoán số nhập dữ liệu từ bàn phím.
 - Nếu số nhập vào đúng với số được random thì in ra message chúc mừng
 - Nếu số nhập vào bé hơn số được random thì in ra message là bé quá
 - Nếu số nhập vào lớn hơn số được random thì in ra message là lớn quá
 */
import Foundation
func b3(){
    var a: Int = 0
    while a != 1 {
        
        var b: Int = Int.random(in: 1...100)
        print("Chọn 1 số bất kì từ 1 -> 100 từ bàn phím: ", terminator: "")
        var c: Int = Int(readLine() ?? "0") ?? 0
        if c == b {
            print("Chúc Mừng.")
        } else {
            if c > b {
            print("Lớn quá.")
            } else{
                print("Bé quá.")
            }
        print("Nhập ( 0 ) để chơi lại, nhập ( 1 ) để kết thúc trò chơi: ", terminator: "" )
        a = Int(readLine() ?? "0") ?? 0
    }
}
}
