//
//  VN_Bai02.swift
//  BTVN_Buoi02_28_12
//
//  Created by Ong_Lao_Ngao on 12/29/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

//2. Tìm số n bé nhất sao cho n! lớn hơn một số m cho trước (m nhập từ bàn phím).

import Foundation
 
func timS(){
    print("Nhập số m cần thực hiện: ", terminator: "")
    let m: Int = Int(readLine() ?? "0") ?? 0
    var b: Int = 1
    for i in 1..<m {
        var a: Int = 1
        for j in 1..<i {
            
            a = a * (j+1)
            }
            if(a > m) { b = i-1
            break
        }
        
    }
    
    print("Tìm số n bé nhất sao cho n! lớn hơn một số \(m) là : \(b)")
}

