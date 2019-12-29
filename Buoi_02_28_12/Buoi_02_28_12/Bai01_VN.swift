//
//  Bai01_VN.swift
//  Buoi_02_28_12
//
//  Created by Ong_Lao_Ngao on 12/28/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
//Cho một mảng số nguyên. Kiểm tra nếu trong mảng có phần tử âm thì thay thế no bằng 0
func kiemTraMang(){
    var mang:[Int] = [-2,1,-4,3]
    for i in 0..<mang.count {
        if mang[i] < 0 {
            mang[i] = 0
        }
    }
    print(mang)
}
