//
//  Bai06.swift
//  Buoi01_26_12
//
//  Created by Ong_Lao_Ngao on 12/27/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
func pTBN(){
    print("Phương trình bậc nhất có dang: ax + b = 0 (Điều kiện a khác 0)")
    let a6: Int = 1
    var t6: Int = 0
    repeat {
        print("Nhâp  a:", terminator: " ")
        t6 = 0
        let a6: Int = Int(readLine() ?? "1") ?? 1
        if(a6 == 0){
            print("Nhập a không thoả mãn ->", terminator: " ")
            t6 = 1
        }
    } while t6 == 1 
    
    
    
    print("Nhập b:", terminator: " ")
    let b6: Int = Int(readLine() ?? "0") ?? 0
    let c6: Int = (-b6/a6)
    print("Nghiệm của phương trình \(a6)x + \(b6) = \(c6)")
    
}
