//
//  Bai01.swift
//  Buoi01_26_12
//
//  Created by Ong_Lao_Ngao on 12/27/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation

func baiTap01(){
    print("Nhập bán kính hình cầu: ")
    let r: Float = Float(readLine() ?? "0") ?? 0
    print("Diện tích hình cầu có bán kính \(r) là :  \(4 * 3.14 * r)")
    let v: Float = (4/3) * 3.14 * r
    print("Thể tích hình cầu có bán kính \(r) là : \(pow( v , 3)) ")
}

