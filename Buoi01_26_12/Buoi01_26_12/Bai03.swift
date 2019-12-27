//
//  Bai03.swift
//  Buoi01_26_12
//
//  Created by Ong_Lao_Ngao on 12/27/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation

func xetSN(){
    print("Nhập số (số nguyên) cần xét từ bàn phím: ", terminator: " ")
    let sn: Int = Int(readLine() ?? "0") ?? 0
    
    //xét số nguyên dương
    if(sn > 0){
        print("So \(sn) là số nguyên dương")
    } else {
        print("So \(sn) không là số nguyên dương" )
    }
    
    //xét số chẵn
    if (sn % 2 == 0) {
        
        print("So \(sn) là số chẵn")
    } else {
        print("So \(sn) là số lẻ")
    }
    
    //xét sn có chia hết cho 5 không
    if (sn % 5 == 0) {
        
        print("So \(sn) có chia hết cho 5")
    } else {
        print("So \(sn) không chia hết cho 5")
    }
    
    //Xét sn có phải là số nguyên tố hay không
    var t1: Int = 0
    
    for i in 1..<sn {
        if (sn % i == 0) {
            print("Số \(sn) không là số nguyên tố")
        
        } else {
            break
        }
    }
    print("Số \(sn) là số nguyên tố")
    
}
