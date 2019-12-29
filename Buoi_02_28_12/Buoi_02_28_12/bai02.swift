//
//  bai02.swift
//  Buoi_02_28_12
//
//  Created by Ong_Lao_Ngao on 12/28/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
//Tìm số lớn nhất 3 số cho trước

func timsoLN(a: Int, b: Int, c: Int){
    if (a > b && a > c){
        print("Số \(a) là số lớn nhất trong 3 số \(a),\(b),\(c)")
        
    } else {
        if (b > a && b > c) {
            print("Số \(b) là số lớn nhất trong 3 số \(a),\(b),\(c)")
        } else {
            if ( c > a && c > b){
                print("Số \(c)là số lớn nhất trong 3 số \(a),\(b),\(c)")
            } else {
                if(a == b && a > c) {
                    print(" Số \(a) và \(b) cùng là 2 số lớn nhất trong 3 số \(a),\(b),\(c)")
                } else {
                    if (a == c && a > b) { print("Số  \(a) và \(c) cùng là 2 số lớn nhất trong 3 số \(a),\(b),\(c)")
                        
                    } else {
                        if(b == c && b > a) {
                            print(" Số \(b) và \(c) cùng là 2 số lớn nhất trong 3 số \(a),\(b),\(c)")
                        }
                            
                        
                    }
                }
            }
        }
    }
    
    
    
}
