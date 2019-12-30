//
//  VN_Bai03.swift
//  BTVN_Buoi02_28_12
//
//  Created by Ong_Lao_Ngao on 12/29/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//


//3, Trả về Vị trí đầu tiên của số lẻ, vị trí cuối cùng của số chẵn trong mảng bất kì.

import Foundation
func chanLe(){
    var mang: [Int] = [10, 4, 2, 3, 4, 5, 6, 11, 15]
    var chan: Int = 0
    var le: Int = 1
    var vtchan: Int = 0
    var vtle: Int = 0
    for (index, value) in mang.enumerated() {
        if(value % 2 == 0) { chan = value
            vtchan = index
        }
    
    }
    
    for (index, value) in mang.enumerated() {
        if( value % 2 == 1) {
            le = value
           vtle = index
            break
        }
    }
    print("Số lẻ đầu tiên trong mảng ở vị trí thứ \(vtle)")
    print("Số chẵn đầu tiên trong mảng ở vị trí thứ \(vtchan)")
}
