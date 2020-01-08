//
//  B8.swift
//  BT_LogicNC
//
//  Created by Ong_Lao_Ngao on 1/7/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//
/*
 B8: Viết chương trình nhập n phân số (n < 5):
 - Tính tổng n phân số và rút gọn đáp án
 - Tính hiệu n phân số và rút gọn đáp ánx
 - Tính tích n phân số và rút gọn đáp án
 - Tính thương n phân số và rút gọn đáp án
*/
import Foundation
func b8(){
    print("Nhập số lượng phân số cần nhập: ")
    var a: Int = Int(readLine() ?? "0") ?? 0
    var ts: [Int] = [1]
    var ms: [Int] = [1]
    var ts1: Int
    var ms1: Int
    for i in 0..<a {
        print("Nhập số thứ \(i + 1): ")
        print("Nhập tử số: ", terminator: "")
        ts1 = Int(readLine() ?? "1") ?? 1
        ts.append(ts1)
        print("Nhập mẫu số: ", terminator: "")
         ms1 = Int(readLine() ?? "1") ?? 1
        ms.append(ms1)
    }
    ts.remove(at: 0)
    ms.remove(at: 0)
    var tts: Int = ts[0]
    var tms: Int = ms[0]
    //- Tính tổng n phân số và rút gọn đáp án
    for i in 1..<ts.count {
        tts = tts * ms[i] + ts[i] * tms
        tms = tms * ms[i]
    }
    
    print("Tổng \(a) phần tử vừa nhập vào là: ", terminator: "")
    rutGon(a: tts, b: tms)
    tts = ts[0]
    tms = ms[0]
    //- Tính hiệu n phân số và rút gọn đáp ánx
    for i in 1..<ts.count {
        tts = tts * ms[i] - ts[i] * tms
        tms = tms * ms[i]
    }
    print("Hiệu \(a) phần tử vừa nhập vào là: ", terminator: "")
    rutGon(a: tts, b: tms)
    
    //- Tính tích n phân số và rút gọn đáp án
    tts = ts[0]
    tms = ms[0]
    for i in 1..<ts.count {
        tts = tts * ts[i]
        tms = tms * ms[i]
    }
    print("Tích \(a) phần tử vừa nhập vào là: ", terminator: "")
    rutGon(a: tts, b: tms)
    
    //- Tính thương n phân số và rút gọn đáp án
    tts = ts[0]
    tms = ms[0]
    for i in 1..<ts.count {
        tts = tts * ms[i]
        tms = tms * ts[i]
    }
    print("Thương \(a) phần tử vừa nhập vào là: ", terminator: "")
    rutGon(a: tts, b: tms)
    
}

func rutGon(a: Int, b: Int){
        for i in 0..<b {
            if a % (b - i) == 0 {
                print("\(a / (b - i))/\(b / (b - i))")
                break
            }
        }
}
