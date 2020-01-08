//
//  VN_Bai08.swift
//  BTVN_Buoi02_28_12
//
//  Created by Ong_Lao_Ngao on 12/31/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

//8, Viết chương trình vẽ một chữ X bằng các dấu * với chiều cao nhập từ bàn phím (chiều cao lớn hơn 0 và là số lẻ)
//*   *
// * *
//  *
// * *
//*   *



import Foundation
func dauNhan(){
    var a: Int = 0
    repeat{
        print("Nhập chiều cao (số lẻ): ", terminator: "")
       a = Int(readLine() ?? "0") ?? 0
    } while( a % 2 == 0)
   
    var h: Int = (a - 1)/2

    for i in 1...h {
        
        for j in 1...i {
            print(" ", terminator: "")
        }
        print("*", terminator: "")
        for e in 1...( (h - i + 1)*2 - 1 ) {
            print(" ", terminator: "")
        }
        print("*")
    }
    
    for i in 0...h {
        print(" ", terminator: "")
        
    }
    print("*")
   
    for i in 1...h {
        for j in 1...(h - i + 1) {
            print(" ", terminator: "")
        }
        print("*", terminator: "")
        for e in 1...(i*2 - 1) {
            print(" ", terminator: "")
        }
        print("*")
    }
    
   

}
/*
 print("Nhập vào chiều cao x: ")
    let h1 = Int(readLine()!)!
    
    for i in 0..<h {
        for j in 0..<h {
            if i == j || i + j == h - 1 {
                print("*", terminator: "")
            } else {
                print(" ", terminator: "")
            }
        }
        
    }
 */
