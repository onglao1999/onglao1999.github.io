//
//  ChessViewController.swift
//  BanCo
//
//  Created by Ong_Lao_Ngao on 2/18/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit
// tag
var countTag: Int = 0
class ChessViewController: UIViewController {
    var margin: CGFloat = 0

    @IBOutlet weak var ChessView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ChessView.backgroundColor = .red
        ChessView.frame.size = CGSize(width: view.frame.maxX, height: view.frame.maxX )
        ChessView.center = view.center
        banCo()
        placeQueen(isPut: true, row: 0, colum: 3)
    }
    
    func banCo(){
        for i in 1...8 {
            
            for j in 1...8 {
                countTag += 1
                if i%2 == 1 && j%2 == 0 {
                    drawBick(row: i - 1, col: j - 1, radius: ChessView.frame.maxX/8 - 2*margin/8, color: .black, tag: countTag)


                } else {
                    if i%2 == 1 && j%2 == 1 {
                        drawBick(row: i - 1, col: j - 1, radius: ChessView.frame.maxX/8 - 2*margin/8, color: .blue, tag: countTag)
                    } else {
                        if i % 2 == 0 && j % 2 == 1 {
                            drawBick(row: i - 1, col: j - 1, radius: ChessView.frame.maxX/8 - 2*margin/8, color: .black, tag: countTag)
                        } else {
                            drawBick(row: i - 1, col: j - 1, radius: ChessView.frame.maxX/8 - 2*margin/8, color: .blue, tag: countTag)
                        }
                    }
                }
               
            }
            
        }

    }
    
    
    func drawBick(row: Int, col: Int, radius: CGFloat, color: UIColor, tag: Int){
      let d = radius
       let bick = BanCo(startPoint: CGPoint(x: d * CGFloat(col) + margin, y: d * CGFloat(row) + margin) , radius: radius, color: color)
       ChessView.addSubview(bick)
    ChessView.tag = tag
    let gesture = UITapGestureRecognizer(target: self, action: #selector(tapSquare(_:)))
          bick.addGestureRecognizer(gesture)
          ChessView.addSubview(bick)
   }
    
     @objc func tapSquare(_ sender: UITapGestureRecognizer){
         guard let squareView = sender.view else {
             return
         }
        print(squareView.tag)
           }
    func placeQueen(isPut: Bool, row: Int, colum: Int){
        let queenImageView = UIImageView(image: UIImage(named: "queen"))
        if isPut {
            queenImageView.frame = CGRect(x: margin + CGFloat(colum)*(ChessView.frame.maxX/8 - 2*margin/8), y: CGFloat(colum)*(ChessView.frame.maxX/8 - 2*margin/8), width: (ChessView.frame.maxX/8 - 2*margin/8), height: (ChessView.frame.maxX/8 - 2*margin/8))
            queenImageView.contentMode = .scaleToFill
            ChessView.addSubview(queenImageView)
        }
        
    }
    }

