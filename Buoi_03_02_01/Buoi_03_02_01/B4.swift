//
//  B4.swift
//  Buoi_03_02_01
//
//  Created by Ong_Lao_Ngao on 1/2/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.

//4, In ra họ và tên của một họ tên cho trước. (Ví dụ Phan Thanh Hoa -> In ra: Phan Hoa)

import Foundation
func hoTen(){
var name: String = "Nguyễn Viết Huy"
    var name1: [Character] = [" "]
    var dem: Int = 0
    for i in name {
        name1.append(i)
    }
    name1.remove(at: 0)
    for i in 0..<name1.count {
        if name1[i] == " " {
            for j in 0..<i {
                print("\(name1[j])", terminator: "")
            }
            break
        }
    }
    print(" ", terminator: "")
    for i in 0..<name1.count {
        if name1[ name1.count - i - 1] == " "{
            for j in name1.count - i..<name1.count {
                print("\(name1[j])",terminator: "")
            }
            break
        }
    }
    print("")
    
   
}

/*
 print("Nhập vào họ và tên (không dấu)")
 let hoten = readLine() ?? ""
 
 let ho_tens = hoten.components(separatedBy: " ")
 
 if ho_tens.count == 1 {
     print(ho_tens[0])
 }else if ho_tens.count == 2 {
     print("\(ho_tens[0]) \(ho_tens[1])")
 }else{
     print("\(ho_tens.first!) \(ho_tens.last!)")
 }
 */

