//
//  BickViewController.swift
//  CustomView
//
//  Created by Ong_Lao_Ngao on 2/15/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class BickViewController: UIViewController {
    override func viewDidLoad() {
        let brickView = BrickView(startPoint: view.center, radius: 100, color: .blue)
        super.viewDidLoad()
         view.addSubview(brickView)
        
    }
    
    func draw0(){
        for i in 0...1 {
            for j in 0...1 {
                drawBrick(row: i, col: j, radius: 50, color: .red)
            }
        }
    }
    func drawBrick(row: Int, col: Int, radius: CGFloat, color: UIColor){
        let d = radius * 2
        let brick = BrickView(startPoint: CGPoint(x: d*CGFloat(col), y: d*CGFloat(row)), radius: radius, color: color)
        view.addSubview(brick)
    }

}
