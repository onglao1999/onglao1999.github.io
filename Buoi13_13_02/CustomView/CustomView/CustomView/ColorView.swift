//
//  ColorView.swift
//  CustomView
//
//  Created by Ong_Lao_Ngao on 2/15/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ColorView: ShadowView {
// sủe dụng keyword convenience trước init để bên trong hàm init này có thể gọi đến hàm init khác
    convenience init(color: UIColor) {
        self.init(frame: .zero)
        self.backgroundColor = color
    }
}
