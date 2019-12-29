//
//  GV_Mang.swift
//  Buoi_02_28_12
//
//  Created by Ong_Lao_Ngao on 12/28/19.
//  Copyright © 2019 Ong_Lao_Ngao. All rights reserved.
//

import Foundation

//Mảng luôn có []

let arrays:[Int] = [0,1,2]
//Cho về 1 mảng khi các phần tử có điểm chung và điểm chung là kiểu của mảng đấy. vd : 0,1,2 cùng kiểu Int

func mang(){
    //Khai báo một mảng số nguyên
    var numbers: [Int] = [0,1,2]
    
    //Đếm số phần tử trong mảng
    print(numbers.count)
    
    print("--")
    //Thêm mới 1 pt trong mảng
    numbers.append(2)
    print(numbers)
    
    print("--")
    //Thêm mới nhiều phần tử vào mảng cùng 1 lần
    numbers.append(contentsOf: [4, 5])
    print(numbers)
    print("--")
    
    //Xoá 1 pt trong mảng
    numbers.remove(at: 2) //Xoá số 2 trong mảng [0,1,2,3,4,5]
    
    //Xoá tất cả phần tử trong mảng
    //numbers.removeAll()
    //print(numbers)
    
    print("--")
    //Thay thế 1 phần tử nào đó trong mảng
    numbers[0] = 10
    print(numbers)
    
    numbers.replaceSubrange(2...3, with: [5,6,7]) // Xoá phần tử từ vị trí 2 đến 3 và chèn vào đó mảng [5,6,7]
    print(numbers)
    
    //Duyệt mảng
    print("--")
    //Chiều thuận
    for item in numbers {
        print(item)
    }
    print("--")
    //Chiều ngược lại
    for item in numbers.reversed(){
        print(item)
    }
    
    print("--")
    for i in 0..<numbers.count {
        print(numbers[i])
    }
    
    //duyệt mảng theo index sử dụng enumerated
    for(index, value) in numbers.enumerated(){
        print("Index là: \(index) - Value là: \(value)")
    }
    
    
    
}

//Bài tập 01: nhập 1 mảng chứa các số nguyên , trả về 1 mảng bình phương cacs gt cua phần tử trong mảng
func baiTap01() {
    var sn: [Int] = [ 1 , 2 , 3 ]
    for i in 0..<sn.count {
        sn[i] = sn[i] * sn[i]
    }
    print(sn)
}

//cho mảng String tên. In ra " Tôi tên là mảng[] "

func mangTen(){
    
}

