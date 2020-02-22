//
//  BanCo.swift
//  BanCo
//
//  Created by Ong_Lao_Ngao on 2/18/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class BanCo: UIView {
    var banKinh: CGFloat = 0.0
    var fillColor: UIColor!
    convenience init(startPoint: CGPoint, radius: CGFloat, color: UIColor) {
        self.init(frame: CGRect(x: startPoint.x, y: startPoint.y, width: radius, height: radius))
        self.banKinh = radius
        self.fillColor = color
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let squareLayer = CAShapeLayer()
        squareLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 0).cgPath
        squareLayer.fillColor = fillColor.cgColor
        self.layer.addSublayer(squareLayer)
        let L: CGFloat = banKinh
        let x: CGFloat = L/8
        
//
    }
}
