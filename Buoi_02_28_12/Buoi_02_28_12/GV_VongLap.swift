//
//  GV_VongLap.swift
//  Buoi_02_28_12
//
//  Created by Ong_Lao_Ngao on 12/28/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
func vongLapFor(){
    //Để ý ...
    for i in 0...10{
        print(i)
    }
    
    //Để ý ..
    for i in 0..<10{
        print(i)
    }
    
    
}

func vongLapWhile(){
    var i = 10
    while(i > 0){
        i -= 1 //Trừ i cho 1 đơn vị
        print(i)
    }
}

func vongLapRepeatWhile(){
    var i = 0
    repeat {
        i += 1
        print(i)
    } while(i<10)
}
