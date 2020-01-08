//
//  B4.swift
//  BTVN_Buoi04_05_01
//
//  Created by Ong_Lao_Ngao on 1/6/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//
//4. Giải phương trình bậc 2: ax2 + bx + c = 0
import Foundation
func b4(){
    print("Cho phương trình bậc 2 dạng: ax2 + bx + c = 0")
    print("Nhập a: ", terminator: "")
    var a: Float = Float(readLine() ?? "0") ?? 0
    print("Nhập b: ", terminator: "")
    var b: Float = Float(readLine() ?? "0") ?? 0
    print("Nhập c: ", terminator: "")
    var c: Float = Float(readLine() ?? "0") ?? 0
    
    if a == 0 {
        print("Phương trình đã cho có 1 nhiệm duy nhất: \((Float)(-c / b))")
    } else{
        var dt: Float = Float(b*b - 4*a*c )
        if dt > 0 {
            var i: Float = Float( ( (-b) + powf(dt, 2)) / (2 * a) )
            var j: Float = Float( ( (-b) - powf(dt, 2)) / (2 * a) )
            print("Phương trình có 2 nghiệm phân biệt: x1 = \(i),x2 = \(j )")
        } else {
            if dt == 0 {
                print(" Phương trình có nghiệm kép: x1 = x2 = \(Float( (-b) / (2 * a) ))")
            } else{
                print("Phương trình vô nghiệm.")
            }
        }
      
    }
}
