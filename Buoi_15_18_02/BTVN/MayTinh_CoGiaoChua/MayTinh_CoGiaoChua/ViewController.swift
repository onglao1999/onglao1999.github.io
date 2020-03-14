//
//  ViewController.swift
//  MayTinh_CoGiaoChua
//
//  Created by Ong_Lao_Ngao on 3/4/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

// định nghĩa các phép tính
enum Operation: String {
    case Devide = "/"
    case Multiply = "*"
    case Subtract = "-"
    case Add = "+"
    case Empty = ""
    
}
class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    // khai báo các biến
    var currentOperation: Operation = .Empty // lưu phép tính hiện tại
    var runningNumber = "" // lưu số được chọn
    var leftValue = "" // lưu ssoos bên trái biểu thức
    var rightValue = "" // lưu số bên phải biểu thức
    var result = "" // để lưu kết quả phép tính sau mỗi lần tính
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func numberButton(_ sender: UIButton) {
        runningNumber += "\(sender.tag)"
        resultLabel.text = runningNumber
    }
    
    
    @IBAction func equalButton(_ sender: Any) {
        thucHienPhepTinh(currentOperation)
    }
    @IBAction func addButton(_ sender: Any) {
        thucHienPhepTinh(.Add)
    }
    @IBAction func subButton(_ sender: Any) {
        thucHienPhepTinh(.Subtract)
    }
    @IBAction func multiButton(_ sender: Any) {
         thucHienPhepTinh(.Multiply)
    }
    @IBAction func devideButton(_ sender: Any) {
         thucHienPhepTinh(.Devide)
    }
    @IBAction func clearButton(_ sender: Any) {
       runningNumber = ""
                          leftValue = ""
                          rightValue = ""
                          result = "0"
        resultLabel.text = "0"
    }
    
    // viết hàm thực hiện phép tính toán
    func thucHienPhepTinh(_ operation: Operation){
        if currentOperation != .Empty{ // nếu có phép tính toán đc thì nhảy vào đây
            if runningNumber != "" {// nếu runningNumber có giá trị thì nhảy vào đây
                rightValue = runningNumber
                runningNumber = ""
                
                switch operation {
                case .Add:
                    result = "\((Double(leftValue)!) + (Double(rightValue)!))"
                case .Subtract:
                    result =    "\((Double(leftValue)!) - (Double(rightValue)!))"
                case .Multiply:
                    result =    "\((Double(leftValue)!) * (Double(rightValue)!))"
                case .Devide:
                    result =    "\((Double(leftValue)!) / (Double(rightValue)!))"
                
                default:
                    return
                }
                resultLabel.text = result
                leftValue = result
            }
        } else {// nếu không có phép tính đc chọn thì nhảy vào đây
            leftValue = runningNumber
            runningNumber = ""
            
        }
        // gán lại cho phép tính hiện tại
        currentOperation = operation
    }
}

