//
//  main.swift
//  Buoi01_26_12
//
//  Created by Ong_Lao_Ngao on 12/27/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
print("                             ----DANH SÁCH MENU----                                ")
print(" --------------------------------------------------------------------------------")
print("|    (1) Cho bán kính hình cầu, tính và in ra diện tích, thể tích của hình cầu   |")
print("|    (2) Tính tổng bình phương 2 số a, b (a, b nhập từ bàn phím)                 |")
print("|    (3) Viết chương trình nhập vào số nguyên n và xét giá trị của n             |")
print("|    (4) Cho 2 số a và b, kiểm tra xem a có chia hết cho b không                 |")
print("|    (6) Giải phương trình bậc nhất                                              |")
print("|    (7) Chuyển đổi nhiệt độ C sang F và ngược lại                               |")
print(" --------------------------------------------------------------------------------")




    print("CHỌN BÀI TẬP ( chọn 1 - 7 )")
    let demo: Int = Int( readLine() ?? "10") ?? 10

    //Bài 01
    if(demo == 1) {
        print("BÀI TẬP 01: Cho bán kính hình cầu, tính và in ra diện tích, thể tích của hình cầu")
        baiTap01()
        
        
    }


    //Bài 02
    if(demo == 2) {
        print("BÀI TẬP 02: Tính tổng bình phương 2 số a, b (a, b nhập từ bàn phím)  ")
        tongBP()
        
    }

    //Bài 03
    if(demo == 3) {
        print("BÀI TẬP 03: Viết chương trình nhập vào số nguyên n và xét giá trị của n")
        xetSN()
    }

    //Bài 04
    if(demo == 4) {
        print("BÀI TẬP 04: Cho 2 số a và b, kiểm tra xem a có chia hết cho b không ")
        phepChia()
    }

    //Bài 05
    if(demo == 5) {
        print("BÀI TẬP 05: ")
        soLN()
    }

    //Bài 06
    if(demo == 6) {
        
        print("BÀI TẬP 06: Giải phương trình bậc nhất")
        pTBN()
    }

    //Bài 07
    if(demo == 7){
        print("BÀI TẬP 07: Chuyển đổi nhiệt độ C sang F và ngược lại")
        chuyenDoi()
    }
   









