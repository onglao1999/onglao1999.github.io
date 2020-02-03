//
//  Bai01.swift
//  BTVN_BaiTapTet_Logic
//
//  Created by Ong_Lao_Ngao on 1/22/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//1. Sắp xếp mảng giảm dần sử dụng hàm sort()

import Foundation
func bai01(){
   print("Nhập số lượng phần tử trong mảng: ", terminator: "")
      var n: Int = Int(readLine() ?? "0") ?? 0
      var a: Int
      var mang: [Int] = [0]
      for i in 0..<n {
          print("Nhập phần tử thứ \(i + 1): ", terminator: "")
          a = Int(readLine() ?? "0") ?? 0
          mang.append(a)
      }
      
      mang.remove(at: 0)
   
    mang.sort(by: >)
    for i in mang {
        print("\(i) ", terminator: "")
    }
}
