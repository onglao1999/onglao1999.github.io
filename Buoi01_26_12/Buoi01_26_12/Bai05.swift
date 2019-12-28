//
//  Bai05.swift
//  Buoi01_26_12
//
//  Created by Ong_Lao_Ngao on 12/28/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
func soLN(){
    print("Nhập số a: ", terminator: "")
    let a5: Float = Float(readLine() ?? "0") ?? 0
    print("Nhập số b: ", terminator: "")
    let b5: Float = Float(readLine() ?? "0") ?? 0
    if(a5 > b5){
        print(" \(a5) > \(b5)")
    } else {
        print(" \(a5) < \(b5)")
    }
}
