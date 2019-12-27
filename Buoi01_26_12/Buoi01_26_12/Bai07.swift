//
//  Bai07.swift
//  Buoi01_26_12
//
//  Created by Ong_Lao_Ngao on 12/27/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
func chuyenDoi(){
    print(" -------------------------------------------")
    print("|                   MENU                    |")
    print("|                                           |")
    print("|             (1)   ºC --> Độ F             |")
    print("|             (2)   ºF --> Độ C             |")
    print("|                                           |")
    print(" -------------------------------------------")
    print("Chọn mục muốn chuyển đổi: ", terminator: " ")
    let a7: Int = Int(readLine() ?? "0") ?? 0
    
    
    //°C  =  ( °F ─  32 )  ⁄  1.8    °F  =  ( °C × 1.8 ) +  32
    if(a7 == 1){
        print("Nhập ºC :", terminator: " ")
        let b7: Float = Float(readLine() ?? "0") ?? 0
        let c7: Float = Float(b7 * 1.8) + 32
        print("Vậy : \(b7) ºC --> \(c7) ºF")
    }
    if(a7 == 2) {
        print("Nhập ºF :", terminator: " ")
        let d7: Float = Float(readLine() ?? "0") ?? 0
        let e7: Float = Float((d7 - 32) / 1.8)
        print("Vậy : \(d7) ºF --> \(e7) ºC")
    }
}

