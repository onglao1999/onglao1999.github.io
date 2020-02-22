//
//  Buttomv.swift
//  May_Tinh
//
//  Created by Ong_Lao_Ngao on 2/20/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit
var vien: CGFloat = 0
var fillColor: UIColor!
var c: CGFloat = 0
var n: UIButton!
var x: CGFloat = 0
var y: CGFloat = 0
var view1: UIView = UIView()
class Buttomv: UIView {

    convenience init(startPoint: CGRect, fillColor1: UIColor) {
        
        self.init(frame: CGRect(x: startPoint.origin.x, y: startPoint.origin.y, width: startPoint.size.width, height: startPoint.size.height))
        fillColor = fillColor1.self
        x = startPoint.origin.x
        y = startPoint.origin.y
        c = startPoint.size.width
        
        
    }
    override func draw(_ rect: CGRect) {
         super.draw(rect)
               let shapeLayer = CAShapeLayer()
               //shapeLayer.path = UIBezierPath(ovalIn: self.bounds).cgPath
               shapeLayer.fillColor = fillColor.cgColor
               self.layer.addSublayer(shapeLayer)
    }
}
