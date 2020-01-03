//
//  B5.swift
//  Buoi_03_02_01
//
//  Created by Ong_Lao_Ngao on 1/2/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 5, Viết hàm cho phép người dùng chọn đáp án Question: Đâu không phải là một ngôn ngữ lập trình? a - Golang b - Swift c - Ruby d - Daily

 Cho người dùng chọn a, b, c, d để trả lời! Yêu cầu người dùng chọn lại đáp án nếu input không đúng, (không đúng nếu input khác a, b, c, d) In ra trả lời sai nếu đáp án không đúng In ra trả lời đúng nếu đáp án đúng
 */

import Foundation
func traLoi(){
    print("Đâu không phải là một ngôn ngữ lập trình ?")
    print("a - GoLang.  b - Swift.   c - Ruby.   d - Daily")
    var s: Character
    print("Chọn đáp án (a, b, c, d): ", terminator: "")
    s = Character(readLine()!)
   
    repeat{
        if s == "a" || s == "b" || s == "c" || s == "d" {
               if s == "a" {
                   print("Đáp án \(s) sai . Nhập lại đáp án")
                   s = Character(readLine()!)
            }
            
               if  s == "b"  {
                   print("Đáp án \(s) sai . Nhập lại đáp án")
                   s = Character(readLine()!)
            }

               if s == "c" {
                   print("Đáp án \(s) sai . Nhập lại đáp án")
                   s = Character(readLine()!)
            }

            
            
           } else{
               print("Đáp án nhập sai . Nhập lại đáp án : ", terminator: "")
               s = Character(readLine()!)
           }
           
        
    } while s != "d"
    
    print("Đáp án đúng !!!")
    
    
    
}
