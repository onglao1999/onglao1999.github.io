//
//  Bai02_TrenLop.swift
//  BTVN_Buoi02_28_12
//
//  Created by Ong_Lao_Ngao on 12/29/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//


//BÀI:2. Nhập 3 giá trị nguyên dương a, b, c. Kiểm tra xem a, b, c có phải là 3 cạnh của tam giác không?
//- Nếu là 3 cạnh của tam giác thì tính diện tích của tam giác.
//- Nếu không phải là tam giác in ra “a, b, c không phải là 3 cạnh của tam giác”


import Foundation

func tamGiac(a: Float, b: Float, c: Float){
    if a + b < c {
        print("3 cạnh vừa nhập không thể tạo thành 1 tam giác !")
        
    } else {
        if a + c < b {
            print("3 cạnh vừa nhập không thể tạo thành 1 tam giác !")
        } else {
            if b + c < a {
                print("3 cạnh vừa nhập không thể tạo thành 1 tam giác !")
            } else {
                print("3 cạnh vừa nhập có thể tạo thành 1 tam giác ")
                let d: Float =  Float( (a + b + c) / 2 )
                let e: Float = Float( sqrt( d * (d - a) * ( d - b ) * ( d - c) ))
                print( " Diện tích của hình tam giác dc tạo thành là : \(e)" )
                
            }
        }
    }
    
    
    
}
