//
//  B5.swift
//  BTVN_Buoi04_05_01
//
//  Created by Ong_Lao_Ngao on 1/6/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//
/*
 5. Viết chương trình tính tiền cước TAXI. Biết rằng:
 - Km đầu tiên là 5000đ
 - 30Km tiếp theo là 4000đ
 - Nếu lớn hơn 30Km thì mỗi Km thêm ra sẽ phải trả là 3000đ
 - Hãy nhập số Km sau đó in ra số tiền phải trả.
 */

import Foundation
func b5(){
    print("Nhập số Km: ", terminator: "")
    var tien: Float
    var a: Float = Float(readLine() ?? "0.0") ?? 0.0
    if a > 30.0 {
        tien = a * 3000.0 + 30.0 * 1000.0 + 5000.0
    } else {
        if  a <= 1.0 {
            tien = 5000
        } else{
            tien = a * 4000 + 1000
        }
       
    }
    print("Số tiền phải trả sau khi đi được \(a) Km là: \(tien) đồng")
}
