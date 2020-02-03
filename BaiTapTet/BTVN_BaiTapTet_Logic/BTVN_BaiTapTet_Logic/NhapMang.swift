//
//  NhapMang.swift
//  BTVN_BaiTapTet_Logic
//
//  Created by Ong_Lao_Ngao on 1/23/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
func nhapmang(_ mang: [Int]){
   print("Nhập số lượng phần tử trong mảng: ", terminator: "")
      var n: Int = Int(readLine() ?? "0") ?? 0
      var a: Int
      var mang1: [Int] = [0]
      for i in 0..<n {
          a = Int(readLine() ?? "0") ?? 0
          mang1.append(a)
      }
      
      mang1.remove(at: 0)
    mang = mang1
}
