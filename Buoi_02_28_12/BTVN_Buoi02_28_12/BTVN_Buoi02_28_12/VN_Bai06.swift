//
//  VN_Bai06.swift
//  BTVN_Buoi02_28_12
//
//  Created by Ong_Lao_Ngao on 12/30/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

//6,Khai báo một mảng có 5 phần tử là các chuỗi “An”,“Long”,"Trang”,”Nam”,”Lam”.
//- Chèn tên mới “Quang" vào vị trí 2.
//- Xóa tên ở cuối mảng
//- Khai báo biến t có giá trị là “Nhung”, kiểm tra xem biến t có trong mảng hay không ?

import Foundation

func xetMang(){
    var mang: [String] = ["An", "Long", "Trang", "Nam", "Lam"]
    mang.insert("Quang", at: 2)
    mang.removeLast()
    var t: String = "Nhung"
    var a: Int = 0
    for i in mang {
        if(t == i) {
            print("Có tồn tại biến \(t) trong mảng")
            break
        } else{
            a = a + 1
        }
    }
    if(a == mang.count) {
        print("Không tồn tại tên '\(t)' trong mảng")
    }
}
