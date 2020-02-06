//
//  BaiNgayThangNam.swift
//  TrenLop10
//
//  Created by Ong_Lao_Ngao on 2/3/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
func ngayThangNam(){
func validate(day: Int, month: Int, year: Int) -> Bool{
if year < 1 || year > 9999 || month < 1 || month > 12 || day < 1 || day > 31{
return false
}

if day > getTotalDayInMonth(month: month, year: year){
return false
}

return true
}

func getTotalDayInMonth(month: Int, year: Int) -> Int{
switch month {
case 1, 3, 5, 7, 8, 10, 12:
return 31
case 4, 6, 9, 11:
return 30
case 2:
if isLeapYear(year: year){
return 29
}else{
return 28
}
default:
return 0
}
}

func isLeapYear(year: Int) -> Bool {
if (year % 4 == 0 && year != 100) || year % 400 == 0{
return true
}else{
return false
}
}

func calendar(){
var year, month, day : Int!
repeat {
print("------")
print("Nhập ngày: ", terminator: "")
day = Int(readLine()!)!
print("Nhập tháng: ", terminator: "")
month = Int(readLine()!)!
print("Nhập năm: ", terminator: "")
year = Int(readLine()!)!
} while (!validate(day: day, month: month, year: year))

print("Tổng số ngày của tháng \(month!) là \(getTotalDayInMonth(month: month, year: year))")
    print(findDate(day: day, month: month, year).0)
    print(findDate(day: day, month: month, year).1)
 calendar()
}

func findDate( day: Int, month: Int, _ year: Int) -> (String, String){
let totalDayInMonth = getTotalDayInMonth(month: month, year: year)

if day == 1 {
if month == 1 {
return ("Ngày liền trước: \(getTotalDayInMonth(month: 12, year: year-1))/12/\(year - 1)", "Ngày liền sau: \(2)/\(month)/\(year)")
}else{
return ("Ngày liền trước: \(getTotalDayInMonth(month: month-1, year: year))/\(month)/\(year)", "Ngày liền sau: \(2)/\(month)/\(year)")
}
} else if day == totalDayInMonth {
if month == 12 {
return ("Ngày liền trước: \(getTotalDayInMonth(month: 12, year: year) - 1)/12/\(year)", "Ngày liền sau: \(1)/\(1)/\(year+1)")
}else{
return ("Ngày liền trước: \(totalDayInMonth-1)/\(month)/\(year)", "Ngày liền sau: \(1)/\(month+1)/\(year)")
}
} else{
return ("Ngày liền trước: \(day-1)/\(month)/\(year)", "Ngày liền sau: \(day+1)/\(month)/\(year)")
}
}
  calendar()
}
