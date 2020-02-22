//
//  DrawBrick.swift
//  ShadownProject
//
//  Created by Ong_Lao_Ngao on 2/13/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class DrawBrick: UIViewController {
    let brickView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.brown
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        brickView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        brickView.center = view.center
        view.addSubview(brickView)
        drawLayer()
        drawLayer0()
        drawLayer1()
        drawLayer2()
        
    }
    
    func drawLayer(){
        let shapeLayer = CAShapeLayer()
        // kích thước squareView
        let L = brickView.frame.size.width
        // x = 1/10L là đoạn kích thước thụt vào
        let x = L / 10
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: brickView.frame.size.width, y: 0))
        path1.addLine(to: CGPoint(x:  brickView.frame.size.width - 20, y: 20))
        path1.addLine(to: CGPoint(x: 20, y: 20))
        
        topLayer.path = path1.cgPath
        shapeLayer.insertSublayer(topLayer, at: 0)
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.7
        brickView.layer.addSublayer(shapeLayer)
    }
    
    func drawLayer0(){
        let shapeLayer0 = CAShapeLayer()
        // kích thước squareView
        let L = brickView.frame.size.width
        // x = 1/10L là đoạn kích thước thụt vào
        let x = L / 10
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: brickView.frame.size.height))
        path1.addLine(to: CGPoint(x: brickView.frame.size.width, y: brickView.frame.size.height))
        path1.addLine(to: CGPoint(x:  brickView.frame.size.width - 20, y: brickView.frame.size.height - 20))
        path1.addLine(to: CGPoint(x: 20, y: brickView.frame.size.height - 20))
        
        topLayer.path = path1.cgPath
        shapeLayer0.insertSublayer(topLayer, at: 0)
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.5
        brickView.layer.addSublayer(shapeLayer0)
    }
    
    func drawLayer1(){
        let shapeLayer1 = CAShapeLayer()
        // kích thước squareView
        let L = brickView.frame.size.height
        // x = 1/10L là đoạn kích thước thụt vào
        let x = L / 10
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: 0, y: L))
        path1.addLine(to: CGPoint(x:  20 , y: L - 20))
        path1.addLine(to: CGPoint(x: 20, y: 20))
        
        topLayer.path = path1.cgPath
        shapeLayer1.insertSublayer(topLayer, at: 0)
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.3
        brickView.layer.addSublayer(shapeLayer1)
    }
    
    func drawLayer2(){
        let shapeLayer = CAShapeLayer()
        // kích thước squareView
        let L = brickView.frame.size.height
        // x = 1/10L là đoạn kích thước thụt vào
       // let x = L / 10
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: brickView.frame.size.width, y: 0))
        path1.addLine(to: CGPoint(x: brickView.frame.size.width, y: L))
        path1.addLine(to: CGPoint(x:  brickView.frame.size.width - 20 , y: L - 20))
        path1.addLine(to: CGPoint(x: brickView.frame.size.width - 20, y: 20))
        
        topLayer.path = path1.cgPath
        shapeLayer.insertSublayer(topLayer, at: 0)
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.2
        brickView.layer.addSublayer(shapeLayer)
    }
}
