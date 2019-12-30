//
//  Bai03_TrenLop.swift
//  BTVN_Buoi02_28_12
//
//  Created by Ong_Lao_Ngao on 12/29/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

//3, Nhập một năm công lịch bất kỳ , kiểm tra xem năm đó có phải năm nhuận hay không

import Foundation

func namNhuan(a: Int){
    if a % 4 == 0 {
        print("Năm \(a) là năm nhuận ")
    } else {
        print("Năm \(a) không là năm nhuận")
    }
}
