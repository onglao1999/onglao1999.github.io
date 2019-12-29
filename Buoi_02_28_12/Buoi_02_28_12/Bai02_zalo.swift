//
//  Bai02_zalo.swift
//  Buoi_02_28_12
//
//  Created by Ong_Lao_Ngao on 12/28/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
/* 2, Nhập 3 giá trị nguyên dương a, b, c. Kiểm tra xem a, b, c có phải là 3 cạnh của tam giác không?
- Nếu là 3 cạnh của tam giác thì tính diện tích của tam giác.
- Nếu không phải là tam giác in ra “a, b, c không phải là 3 cạnh của tam giác” */

func tamGiac(a: Float, b: Float, c: Float){
    if(a + b <= c){
        print("3 số \(a), \(b), \(c) không thể là 3 cạnh của 1 tam giác")
    } else {
        if(a + c <= b) {
            print("3 số \(a), \(b), \(c) không thể là 3 cạnh của 1 tam giác")
        } else {
            if( b + c <= a ){
                print("3 số \(a), \(b), \(c) không thể là 3 cạnh của 1 tam giác")
            } else {
                print("3 số \(a), \(b), \(c) là 3 cạnh của 1 tam giác")
                let d: Float = Float((a + b + c)/2)
                let e: Float = Float(sqrt( d * ( d - a ) * ( d - b ) * ( d - c ) ))
                print("Diện tích hình tam giác có 3 cạnh là \(a),\(b),\(c) = \(e)")
            }
        }
    }
}
