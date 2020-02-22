//
//  BrickView.swift
//  CustomView
//
//  Created by Ong_Lao_Ngao on 2/15/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class BrickView: UIView {
    var fillColor: UIColor! // màu nền
    var banKinh: CGFloat = 0.0
    convenience init(startPoint: CGPoint, radius: CGFloat, color: UIColor){
           self.init(frame: CGRect(x: startPoint.x , y: startPoint.y , width: radius*2, height: radius*2))
        //self.banKinh = radius
        
        self.fillColor = color
       }
    override func draw(_ rect: CGRect) {
        
        super.draw(rect)
        let shapeLayer = CAShapeLayer()
        // roundedRect dùng để vẽ layer hình vuông
        shapeLayer.path = UIBezierPath(roundedRect:self.bounds, cornerRadius: 0).cgPath
        shapeLayer.fillColor = fillColor.cgColor
        self.layer.addSublayer(shapeLayer)
        
        let L: CGFloat = banKinh*2
        let x: CGFloat = 10
        
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L-x, y: x))
        path1.addLine(to: CGPoint(x: x, y: x))
        
        topLayer.path = path1.cgPath
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.4
        shapeLayer.insertSublayer(topLayer, at: 0)
        
       let rLayer = CAShapeLayer()
        let path2 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L-x, y: x))
        path1.addLine(to: CGPoint(x: x, y: x))
        
        rLayer.path = path2.cgPath
        rLayer.fillColor = UIColor.white.cgColor
        rLayer.opacity = 0.3
        shapeLayer.insertSublayer(rLayer, at: 0)
        
        
        let path3 = UIBezierPath()
        let pLayer = CAShapeLayer()
        
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L-x, y: x))
        path1.addLine(to: CGPoint(x: x, y: x))
        
        pLayer.path = path1.cgPath
        pLayer.fillColor = UIColor.white.cgColor
        pLayer.opacity = 0.2
        shapeLayer.insertSublayer(pLayer, at: 0)
        
        
        let path4 = UIBezierPath()
        let dLayer = CAShapeLayer()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L-x, y: x))
        path1.addLine(to: CGPoint(x: x, y: x))
        
        dLayer.path = path1.cgPath
        dLayer.fillColor = UIColor.white.cgColor
        dLayer.opacity = 0.1
        shapeLayer.insertSublayer(dLayer, at: 0)
        print(self.layer.sublayers?.count)
       }
}
