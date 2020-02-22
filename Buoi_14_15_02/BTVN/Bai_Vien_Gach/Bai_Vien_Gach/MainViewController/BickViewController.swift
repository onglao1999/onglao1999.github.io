//
//  BickViewController.swift
//  Bai_Vien_Gach
//
//  Created by Ong_Lao_Ngao on 2/17/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class BickViewController: UIViewController {
    
    @IBOutlet weak var BickL: UIButton!
    @IBOutlet weak var BickI: UIButton!
    @IBOutlet weak var BickJ: UIButton!
    @IBOutlet weak var BickZ: UIButton!
    @IBOutlet weak var BickZNguoc: UIButton!
    @IBOutlet weak var AnhView: UIView!
    override func viewDidLoad() {
        let a = view.frame.maxX/5
        let b = view.frame.maxY
        super.viewDidLoad()
        BickL.backgroundColor = UIColor.blue
        
        BickL.frame = CGRect(x: 0, y: b - 200, width: a, height: 50)
        
        BickI.backgroundColor = UIColor.brown
        BickI.frame = CGRect(x: a, y: b - 200, width: a, height: 50)
        
        BickJ.backgroundColor = UIColor.blue
        BickJ.frame = CGRect(x: 2*a, y: b - 200, width: a, height: 50)
        
        BickZ.backgroundColor = UIColor.brown
        BickZ.frame = CGRect(x: 3*a, y: b - 200, width: a, height: 50)
        
        BickZNguoc.backgroundColor = UIColor.blue
        BickZNguoc.frame = CGRect(x: 4*a, y: b - 200, width: a, height: 50)
        
        
    }
    
    @IBAction func lstart(_ sender: Any) {
       delete1()
        drawBick(row: 0, col: 0, radius: 50, color: .red)
        drawBick(row: 1, col: 0, radius: 50, color: .red)
        drawBick(row: 2, col: 0, radius: 50, color: .red)
        drawBick(row: 2, col: 1, radius: 50, color: .red)
        
        
    }
    @IBAction func istart(_ sender: Any) {
         delete1()
        drawBick(row: 0, col: 0, radius: 50, color: .red)
        drawBick(row: 1, col: 0, radius: 50, color: .red)
        drawBick(row: 2, col: 0, radius: 50, color: .red)
    }
    @IBAction func jstart(_ sender: Any) {
         delete1()
        drawBick(row: 0, col: 1, radius: 50, color: .red)
        drawBick(row: 1, col: 1, radius: 50, color: .red)
        drawBick(row: 2, col: 1, radius: 50, color: .red)
        drawBick(row: 2, col: 0, radius: 50, color: .red)
    }
    @IBAction func zstart(_ sender: Any) {
         delete1()
        drawBick(row: 0, col: 0, radius: 50, color: .red)
        drawBick(row: 0, col: 1, radius: 50, color: .red)
        drawBick(row: 1, col: 1, radius: 50, color: .red)
        drawBick(row: 2, col: 1, radius: 50, color: .red)
        drawBick(row: 2, col: 2, radius: 50, color: .red)
    }
    @IBAction func znguocstart(_ sender: Any) {
         delete1()
        drawBick(row: 0, col: 1, radius: 50, color: .red)
        drawBick(row: 0, col: 2, radius: 50, color: .red)
        drawBick(row: 1, col: 1, radius: 50, color: .red)
        drawBick(row: 2, col: 1, radius: 50, color: .red)
        drawBick(row: 2, col: 0, radius: 50, color: .red)
    }
    func drawBick(row: Int, col: Int, radius: CGFloat, color: UIColor){
       let d = radius
        let bick = ChuL(startPoint: CGPoint(x: d * CGFloat(col), y: d * CGFloat(row)), radius: radius, color: color)
        AnhView.addSubview(bick)
        
    }
    func delete1(){
        for i in 0..<AnhView.subviews.count  {
            AnhView.subviews[0].removeFromSuperview()
        }

    }
}
