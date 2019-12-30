//
//  VN_Bai05.swift
//  BTVN_Buoi02_28_12
//
//  Created by Ong_Lao_Ngao on 12/30/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

//5, Đưa ra: phần tử lớn nhất, phần tử bé nhất, trung bình cộng của một dãy số cho trước

import Foundation
func daySo(){
    var ds: [Int] = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 ]
    var max: Int = 0, min: Int = 0
    var tbc: Int = 0
    for i in 1..<ds.count {
        if(ds[i-1] > ds[i] ){
            max = ds[i-1]
        }
        if(ds[i-1] > ds[i] ){
            min = ds[i]
        }
        tbc = tbc + ds[i]
    }
    print("Số max trong dãy số là : \(max)")
    print("Số min trong dãy số là : \(min)")
    print("Trung bình cộng của dãy số là : \(Float(tbc/ds.count))")
}
