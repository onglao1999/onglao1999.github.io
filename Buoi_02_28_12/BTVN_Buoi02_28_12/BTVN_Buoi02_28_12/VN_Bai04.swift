//
//  VN_Bai04.swift
//  BTVN_Buoi02_28_12
//
//  Created by Ong_Lao_Ngao on 12/30/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

//4, In một chuỗi cho trước theo thứ tự ngược lại (Ví dụ: Hello in thành olleH)

import Foundation
func inChuoi(){
    // Cách 1
    print("Nhập chuỗi từ bàn phím: ", terminator: "")
    var chuoi: String = readLine() ?? " "
    var mang: [Character] = [" "]
    for i in chuoi {
        mang.append(i)
    }
    mang.remove(at: 0)
    
    // Cách 1

    var mang1: [Character] = [" "]
    for i in 0..<mang.count {
        mang1.append(mang[mang.count - i - 1])
    }
    mang1.remove(at: 0)
    
    for i in 0..<mang.count {
         var c: String = String(mang[i])
        if c == c.lowercased() {
            c = c.uppercased()
            mang[i] = Character(c)
        } else{
            c = c.lowercased()
                       mang[i] = Character(c)
        }
    }
    
    
    
   
    for i in mang1 {
        print(i)
    }
    
    //cách 2 GV chữa
    print("Hãy nhập vào chuỗi bất kì (KHông dấu): ")
    let c = readLine() ?? " "
    var result: String = " "
    for i in c {
        let s = String(i)
        let lower = s.lowercased()
        let upper = s.uppercased()
        result = ((s == lower) ? upper : lower) + result
    }
    
}

