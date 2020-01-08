//
//  B8.swift
//  BT_Mang
//
//  Created by Ong_Lao_Ngao on 1/4/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//
/*
 Viết chương trình nhập vào số nguyên dương N và dãy số A gồm N số nguyên . Hãy sắp xếp dãy số trên sao cho các số chẵn chia hết cho 3 lên đầu , các số lẻ chia hết cho 3 xuống cuối dãy . các số còn lại vẫn giữ nguyên
 */
import Foundation
func soCCHC3(){
    print("Nhập số phần tử: ", terminator: "")
          var n: Int = Int(readLine() ?? "0") ?? 0
          var mang: [Int] = [0]
          var a: Int
          // nhập phần tử vào mảng
          for i in 0..<n {
              print("Nhập phần tử thứ \(i + 1): ", terminator: "")
              a = Int(readLine() ?? "0") ?? 0
              mang.append(a)
          }
          mang.remove(at: 0)
    for i in 0..<mang.count {
        for j in i..<mang.count {
            if mang[j] % 2 == 0 && mang[j] % 3 == 0 {
                var tg: Int
                tg = mang[i]
                mang[i] = mang[j]
                mang[j] = tg
                break
            }
        }
    }
    
    for i in 0..<mang.count {
        for j in i..<mang.count {
            if mang[mang.count - j - 1] % 2 == 1 && mang[mang.count - j - 1] % 3 == 0 {
                var a: Int
                a = mang[mang.count - j - 1]
                mang[mang.count - j - 1] = mang[mang.count - i - 1]
                mang[mang.count - i - 1] = a
            break
            }
        }
    }
   
    print("Mảng sau khi thực hiện sắp xếp : ", terminator: "")
    for i in mang {
        print(i, terminator: " ")
    }
}
