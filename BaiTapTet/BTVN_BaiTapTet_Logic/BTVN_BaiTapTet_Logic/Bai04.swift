//
//  Bai04.swift
//  BTVN_BaiTapTet_Logic
//
//  Created by Ong_Lao_Ngao on 1/25/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 4. Tìm số Amstrong là một số có đặc điểm sau: số đó gồm n chữ số, tổng các lũy thừa bậc n của các chữ số đó và số đó.
 Ví dụ: 153 = 1^3 + 5^3 + 3^3. Hãy tìm các số Amstrong nhỏ hơn 1000.

 */

import Foundation
func bai04(){
    print("Tập hợp số Amastrong dưới 1000 : ", terminator: "")
    for an in 0...1000 {
        

//    var a: Int =  Int(readLine() ?? "0") ?? 0
        var a = an
    var n: Int = 0
    var b: Int = 0
    var a1: Int = a
    var a2 = a
    while true {
        if a / 10 != 0 {
            b += 1
            a /= 10
        } else {
            break
        }
        
    }
    var m: Float = 0
    b += 1
    for i in 1...Int(b) {
        var z = a1 % 10
        m += powf(Float(z) , Float(b) )
        a1 /= 10
    }
    if Float(a2) == m{
        print("\(a2) ", terminator: "")
    }
}

}
