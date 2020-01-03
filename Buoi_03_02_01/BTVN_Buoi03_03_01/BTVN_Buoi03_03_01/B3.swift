//
//  B3.swift
//  BTVN_Buoi03_03_01
//
//  Created by Ong_Lao_Ngao on 1/3/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 3,  Vẽ tam giác vuông cân:
 ```
 *
 * *
 * * *
 * * * *
 * * * * *
 ```
 */

import Foundation
func tamGV(){
    print("Vẽ Tam Giác Vuông:")
    print("Nhập độ dài cạnh góc vuông: ", terminator: "")
    var a: Int = Int(readLine() ?? "1") ?? 1
    
    
    for i in 0..<a {
        for j in 0...i {
            print("* ", terminator: "")
        }
        print("")
    }
}
