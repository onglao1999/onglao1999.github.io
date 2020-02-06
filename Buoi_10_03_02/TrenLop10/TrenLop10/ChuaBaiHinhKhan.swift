//
//  ChuaBaiHinhKhan.swift
//  TrenLop10
//
//  Created by Ong_Lao_Ngao on 2/3/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
func hinh1(){
    print("Nhập chiều cao từ bàn phím")
    let h = Int(readLine() ?? "") ?? 0
    
    for i in 0...h {
        if i < h/2{
            for _ in 0...i {
                print("*", terminator: "")
                
            }
            print()
        }
        if i > h/2{
            for _ in i...h{
                print("*", terminator: "")
            }
            print()
        }
    }
}

func hinh2(){
     print("Nhập vào chiều cao h (h lẻ và h lớn hơn 3: ")
    let h = Int(readLine() ?? "") ?? 0
    
    if h%2 == 0 || h<3 {
        hinh2()
    }
    
    let n = h/2 + 1
    var range = 0
    for i in 1...h{
        for j in 1...h{
            if j >= n - range && j <= n + range {
                print("*", terminator: "")
            }else{
                print(" ", terminator: "")
            }
        }
        
        if i >= n {
            range -= 1
        }else {
            range += 1
        }
        print()
    }
    
   
}

