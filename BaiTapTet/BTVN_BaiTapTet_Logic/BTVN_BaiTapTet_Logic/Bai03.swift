//
//  Bai03.swift
//  BTVN_BaiTapTet_Logic
//
//  Created by Ong_Lao_Ngao on 1/23/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 3. Viết chương trình nhập ngày, tháng, năm.
 –   Tháng đó có bao nhiêu ngày
 –   Tìm ngày trước ngày vừa nhập.
 –   Tìm ngày sau ngày vừa nhập
 */

import Foundation
func bai03(){
    
    print("Nhập ngày: ", terminator: "")
    var n: Int = Int(readLine() ?? "0") ?? 0
    print("Nhập tháng: ", terminator: "")
    var t: Int = Int(readLine() ?? "0") ?? 0
    print("Nhập năm: ", terminator: "")
    var nam: Int = Int(readLine() ?? "0") ?? 0
    
    switch t {
    case 1:
    print("Tháng \(t) có 31 ngày")
    case 1 | 3 | 5 | 7 | 8 | 10 | 12:
    print("Tháng \(t) có 31 ngày")
    case 4 | 6 | 9 | 11:
    print("Tháng \(t) có 31 ngày")
    default:
        if n%4 == 0 && n%100 != 0 || n%400 == 0{
            print("Tháng 2 có 29 ngày")
        } else {
            print("Tháng 2 có 28 ngày")
        }
        
    }
    
    // ngày trước ngày vừa nhập
    var n1, t1, nam1: Int
    if n == 1 && t == 1 {
        n1 = 31
        t1 = 12
        nam1 = nam - 1
    } else{
        if n == 1{
            switch t {
            case 2 | 4 | 6 | 8 | 9 | 11:
                n1 = 31
                t1 = t - 1
                nam1 = nam
            case 5 | 7 | 10 | 12:
                n1 = 30
                t1 = t - 1
                nam1 = nam
            default:
                if nam%4 == 0 && nam%100 != 0 || nam%400 == 0{
                    n1 = 29
                    t1 = t - 1
                    nam1 = nam
                } else {
                    n1 = 28
                    t1 = t - 1
                    nam1 = nam
                }
            }
            
        } else{
            n1 = n - 1
            t1 = t - 1
            nam1 = nam
        }
    }
    print("Ngày hôm trước của \(n)/\(t)/\(nam) là \(n1)/\(t1)/\(nam1)")
    
    if n == 31 && t == 12 {
           n1 = 1
           t1 = 1
           nam1 = nam + 1
    }else{
        switch t {
        case 1 | 3 | 5 | 7 | 8 | 10 | 12:
            if n == 31 {
                n1 = 1
                t1 = t + 1
                nam1 = nam
            } else{
               n1 = n + 1
                t1 = t + 1
                nam1 = nam
            }
        
        case 4 | 6 | 9 | 11:
            if n == 30 {
                n1 = 1
                t1 = t + 1
                nam1 = nam
            }else{
                n1 = 1
                t1 = t + 1
                nam1 = nam
            }
            
        default:
            if nam%4 == 0 && nam%100 != 0 || nam%400 == 0{
                if n == 29 {
                    n1 = 1
                    t1 = 3
                    nam1 = nam
                }else{
                    n1 = n + 1
                    t1 = t
                    nam1 = nam
                }
                
            } else {
                if n == 28 {
                    n1 = 1
                    t1 = 3
                    nam1 = nam
                }else{
                    n1 = n + 1
                    t1 = t 
                    nam1 = nam
                }
            }
            
            
        }
    }
    
    print("Ngày hôm sau của \(n)/\(t)/\(nam) là \(n1)/\(t1)/\(nam1)")
}
