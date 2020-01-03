//
//  B1.swift
//  BTVN_Buoi03_03_01
//
//  Created by Ong_Lao_Ngao on 1/3/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 
 1, Vẽ hình chữ nhật đặc:
 ```
 * * * * * * *
 * * * * * * *
 * * * * * * *
 * * * * * * *
 ```
 */

import Foundation
func hinhCND(){
    print("Nhập chiều rộng hcn: ", terminator: "")
    var cr: Int = Int(readLine() ?? "1") ?? 1
    print("Nhập chiều dài dcn: ", terminator: "")
    var cd: Int = Int(readLine() ?? "1") ?? 1
    for i in 0..<cr {
        for j in 0..<cd {
            print("* ", terminator: "")
        }
        print("")
    }
}
