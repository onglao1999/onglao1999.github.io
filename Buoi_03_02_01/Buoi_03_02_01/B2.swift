//
//  B2.swift
//  Buoi_03_02_01
//
//  Created by Ong_Lao_Ngao on 1/2/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
/*
 2, Viết chương trình nhập vào một số nguyên dương không lớn hơn 10000, in ra màn hình chữ số lớn thứ nhì có trong số đó (ví dụ nhập n = 1356 in ra 5). Trong trường hợp không có số lớn thứ nhì, thì in ra số lớn nhất.
 */

import Foundation
func timSoThuNhi(){
    //Cô giáo chữa
   print("Nhập vào số tự nhiên bất kỳ")
   var n = Int(readLine()!) ?? 0
   
   var numbers = [Int]()
   var x = 0
   var newArray = [Int]()
   while n > 0 {
       x = n%10
       n = n/10
       numbers.insert(x, at: 0)
   }
   
   newArray = Array(Set(numbers))
   newArray.sort()
   
   if newArray.count == 1 {
       print("Chữ số duy nhất là \(newArray[0])")
   }else{
    print("Chữ số lớn thứ 2 là \(newArray[newArray.count - 2])")
   }
    
}
