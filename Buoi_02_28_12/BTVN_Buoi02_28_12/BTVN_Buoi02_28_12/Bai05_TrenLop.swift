//
//  Bai05_TrenLop.swift
//  BTVN_Buoi02_28_12
//
//  Created by Ong_Lao_Ngao on 12/29/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//


//5, Tìm số lớn thứ 2 trong mảng số nguyên
import Foundation

func soLN(){
    var mang1: [Int] = [1 ,3, 7, 5, 9]
    for i in 1..<mang1.count {
        if mang1[i-1] < mang1[i] {
            var j: Int
            j = mang1[i]
            mang1[i] = mang1[i+1]
            mang1[i+1] = j
            
            
        }
    }
    print("Số lớn thứ 2 trong mảng là : \(mang1[1])")
}
