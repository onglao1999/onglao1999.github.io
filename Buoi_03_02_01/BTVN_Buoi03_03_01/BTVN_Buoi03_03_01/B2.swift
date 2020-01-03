//
//  B2.swift
//  BTVN_Buoi03_03_01
//
//  Created by Ong_Lao_Ngao on 1/3/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 2, Vẽ hình chữ nhật rỗng:
 ```
 * * * * * * *
 *           *
 *           *
 * * * * * * *
 ```
 */

import Foundation
func hinhCNR(){
    print("Nhập chiều rộng hcn: ", terminator: "")
    var cr: Int = Int(readLine() ?? "1") ?? 1
    print("Nhập chiều dài dcn: ", terminator: "")
    var cd: Int = Int(readLine() ?? "1") ?? 1
    
    for i in 0...(cr-1) {
        if i == 0 || i == (cr-1) {
            for i in 0...(cd - 1) {
                print("* ", terminator: "")
            }
            print("")
        } else {
            print("* ", terminator: "")
            for j in 0...(cd - 3) {
                print("  ", terminator: "")
            }
            print("*")
            
        }
        
        
        
    }
}
