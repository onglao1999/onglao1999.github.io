//
//  ViewController.swift
//  I_am_Rich
//
//  Created by Ong_Lao_Ngao on 1/9/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rubyImageView: UIImageView!
    @IBOutlet weak var amRichLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // set cho rubyImageView nằm ở giữa màn hình và kích thước bằng với kích thước super view
        rubyImageView.center = view.center
        rubyImageView.frame.size = CGSize(width: view.frame.size.width, height: view.frame.size.height)
        amRichLabel.center.x = view.center.x
        //amRichLabel.center.x là tọa độ x của tâm amRichLabel
        amRichLabel.center.y = view.center.y + 200
        //amRichLabel.center.y là tọa độ y của tâm amRichLabel
        amRichLabel.center = CGPoint(x: rubyImageView.center.x, y: rubyImageView.center.y + 500)
        rubyImageView.alpha = 0
        UIView.animate(withDuration: 2) {
            self.rubyImageView.alpha = 1
            self.amRichLabel.center.y = self.rubyImageView.center.y + 200
        }
    }


}

