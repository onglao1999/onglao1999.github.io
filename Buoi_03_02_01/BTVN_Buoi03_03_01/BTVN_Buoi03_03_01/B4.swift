//
//  B4.swift
//  BTVN_Buoi03_03_01
//
//  Created by Ong_Lao_Ngao on 1/3/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 4, Vẽ tam giác cân ngược:
 ```
 * * * * * * *
   * * * * *
     * * *
       *
 */

import Foundation
func tamGCN(){
    print("Nhập chiều cao của tam giác: ", terminator: "")
    var h: Int = Int(readLine() ?? "1") ?? 1
    
    for i in 1...h {
        let kt = Array(repeating: "* ", count: ( 2*(h - i + 1) - 1 ) )
        let s = Array(repeating: "  ", count: (i - 1) )
        let d = s + kt + s
        print(d.joined())
    }
}
