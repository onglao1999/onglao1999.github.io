//
//  Bai04.swift
//  Buoi01_26_12
//
//  Created by Ong_Lao_Ngao on 12/27/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
func phepChia(){
    print("Nhập số a: ", terminator: " ")
    let a4: Int = Int(readLine() ?? "1" ) ?? 1
    
    print("Nhập số b: ", terminator: " ")
    let b4: Int = Int(readLine() ?? "1") ?? 1
    
    if(a4 % b4 == 0){
        print("Số \(a4) chia hết cho số \(b4)")
    }
}
