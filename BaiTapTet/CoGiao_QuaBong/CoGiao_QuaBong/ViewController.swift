//
//  ViewController.swift
//  CoGiao_QuaBong
//
//  Created by Ong_Lao_Ngao on 2/11/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    
    
    var yBanDau: CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yBanDau = ballImageView.frame.origin.y
        chuyenDong2()
    }
    
    // thả rơi quả bóng và dừng ở đáy màn hình
    func chuyenDong1(){
        UIView.animate(withDuration: 1) {
            self.ballImageView.frame.origin.y += self.view.frame.maxY - self.ballImageView.frame.height*2 - 20
        }
    }

    // thả rơi quả bóng và quả bóng bật ngược lại
    func chuyenDong2(){
        // chuyển động trượt xuống
        UIView.animate(withDuration: 1, animations: {
            self.ballImageView.frame.origin.y += self.view.frame.maxY - self.ballImageView.frame.height*2 - 20
        }) { (_) in
            // chuyển động trượt lên
            UIView.animate(withDuration: 1) {
                self.ballImageView.frame.origin.y -= self.view.frame.maxY - self.yBanDau - self.ballImageView.frame.height*2
            }
        }
    }

}
