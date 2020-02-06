//
//  SoAmsTrong.swift
//  TrenLop10
//
//  Created by Ong_Lao_Ngao on 2/3/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
func issoAmstrong(n: Int) -> Bool {
 let arr = Array(String(n))
 var numbers = [Float]()
    numbers = arr.map { (i: Character) -> (Float) in
        Float(String(i))!
        
    }
    var tongAms: Float = 0
    for i in numbers {
        tongAms += powf(i, Float(numbers.count))
    
    }
    if Float(n) == tongAms {
        return true
    }else{
        return false
    }
    
   
}
func lietKeSoAmstrong(){
    for i in 1...1000{
        if issoAmstrong(n: i) {
            print(i)
        }
    }
}
