//
//  Bai03_zalo.swift
//  Buoi_02_28_12
//
//  Created by Ong_Lao_Ngao on 12/28/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
//3, Nhập một năm công lịch bất kỳ , kiểm tra xem năm đó có phải năm nhuận hay không

func namNhuan(a: Int){
    if(a % 4 == 0){
        print("Năm \(a) là năm nhuận")
    } else{
        print("Năm\(a) không là năm nhuận")
    }
}

