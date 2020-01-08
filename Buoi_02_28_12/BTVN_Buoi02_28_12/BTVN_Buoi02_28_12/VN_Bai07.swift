//
//  VN_Bai07.swift
//  BTVN_Buoi02_28_12
//
//  Created by Ong_Lao_Ngao on 12/30/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

//7, Viết chương trình vẽ một tam giác cân bằng các dấu * với chiều cao nhập từ bàn phím (chiều cao lớn hơn 1)
//    *
//  * * *
//* * * * *

import Foundation
func tamGiacCan(){
    print("Nhập chiều cao của tam giác cân : ", terminator: "")
    var h: Int = Int(readLine() ?? "0") ?? 0
    
    for i in 1...h {
        for _ in 0...(((h - i)*2 - 2 )/2 + 1) {
            print(" ", terminator: "")
        }
        //Coi mỗi khoảng trắng là 1 đơn vị. Tìm ra công thức số khoảng trắng ((h - i)*2 - 2 )/2 + 1 là số khoảng trăng của từng dòng
        
        
        for j in 1...(i*2 - 1) {
            print("*", terminator: "")
        }
        //Tương tự cũng tìm ra công thức số kí tự * của từng dòng là (i*2 - 1)
        
        print("")
          }
}
