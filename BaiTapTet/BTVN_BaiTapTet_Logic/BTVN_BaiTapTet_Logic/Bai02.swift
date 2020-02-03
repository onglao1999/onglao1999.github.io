//
//  Bai02.swift
//  BTVN_BaiTapTet_Logic
//
//  Created by Ong_Lao_Ngao on 1/22/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*. In hình (nhập vào chiều cao của hình, với hình 2 thì chiều cao phải lẻ):
```
Hình 1:
*
**
***
****
*****
*****
****
***
**
*
*/

import Foundation
func hinh01(){
    print("Nhập vào chiều cao của hình: ", terminator: "")
    var h: Int = Int(readLine() ?? "0") ?? 0
    for i in 0...h {
        let diem = Array(repeating: "* ", count: i)
        let trong = Array(repeating: "  ", count: h - i)
        let hang = diem + trong
        print(hang.joined())
    }
    for i in 0...h {
        let diem = Array(repeating: "* ", count: h - i)
        let trong = Array(repeating: "  ", count: i)
        let hang = diem + trong
        print(hang.joined())
    }
}

/*
 In hình (nhập vào chiều cao của hình, với hình 2 thì chiều cao phải lẻ):
 Hình 2:

     *
    ***
   *****
  *******
 *********
  *******
   *****
    ***
     *
 ```
 */

func hinh02(){
    print("Nhập vào chiều cao: ", terminator: "")
    var h: Int = Int(readLine() ?? "0") ?? 0
    for i in 1...((h - 1)/2 + 1) {
        let trong = Array(repeating: " ", count: ((h - 1)/2 + 1) - i)
        let diem = Array(repeating: "*", count: (i * 2) - 1)
        let tong = trong + diem + trong
        print(tong.joined())
    }
    for i in 0..<(h - 1)/2 {
        let trong = Array(repeating: " ", count: i + 1)
        let diem = Array(repeating: "*", count: ((h - 1)/2 - i)*2 - 1)
        let tong = trong + diem + trong
        print(tong.joined())
    }
}
