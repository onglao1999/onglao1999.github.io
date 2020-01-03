//
//  B5.swift
//  BTVN_Buoi03_03_01
//
//  Created by Ong_Lao_Ngao on 1/3/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 5, Hai anh em nhà cừu không có gì chơi, thằng anh mới đố thằng em: “Tao cho mày 1 số, nếu nó chẵn thì chia đôi, nó lẻ thì nhân 3 cộng 1. Đố mày biết sau bao nhiêu phép tính thì nó ra 1 ???”.
 Ông em ngẩn tò te không biết trả lời như nào. Bạn hãy giúp chú bé 1 tay với. In ra đáp án hoặc “-1” nếu ko có số nào hợp lệ.
 */

import Foundation
func anhEm(){
    print("Nhập vào số cần thực hiện: ", terminator: "")
    var a: Int = Int(readLine() ?? "1") ?? 1
    let b: Int = a
    var dem: Int = 0
    repeat{
        if a % 2 == 1 {
            a = a * 3 + 1
            dem += 1
        } else {
            a = a / 2
            dem += 1
        }
        
    } while a != 1
    print("Sau \(dem) bước thì số \(b) bằng 1 !!!")
}
