//
//  Bai02_Vn.swift
//  Buoi_02_28_12
//
//  Created by Ong_Lao_Ngao on 12/28/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
//Tìm số nhỏ nhất và lớn nhất trong mảng số nguyên
func timS(){
    var mang: [Int] = [ 1,5,3,6,4,9]
    var test: Int = mang[0]
    var test1: Int = mang[0]
    //Tìm số nhỏ nhất
    for i in 1..<mang.count {
        if(mang[i] > mang[i-1]){
            test = mang[i]
        }
    }
    
    //Tìm số lớn nhất trong mảng
    for i in 1..<mang.count {
        if(mang[i] < mang[i-1]){
            test1 = mang[i]
        }
    }
    print("Giá trị lớn nhất trong mảng là: \(test)")
    print("Giá trị nhỏ nhất trong mảng là: \(test1)")
}
