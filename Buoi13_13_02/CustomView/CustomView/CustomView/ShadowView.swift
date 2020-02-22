//
//  ShadowView.swift
//  CustomView
//
//  Created by Ong_Lao_Ngao on 2/15/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        self.backgroundColor = .red
        
       
    }
    
    // khi custom UIView, muốn set các thuộc tính liên quan tới layer thì hãy đặt trong hàm draw()
    override func draw(_ rect: CGRect) {
        super.draw(.zero)
        self.layer.cornerRadius = 10
        self.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)).cgPath
               self.layer.shadowOpacity = 0.5
               self.layer.shadowRadius = 10
               self.layer.shadowOffset = CGSize(width: 10, height: 10)
        
        //maskTobounds = true: không hiển thị phần layer vượt qua giới hạn kích thước của UIView()
        self.layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
