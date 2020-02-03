//
//  WaterViewController.swift
//  DemoTimer
//
//  Created by Ong_Lao_Ngao on 1/18/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit
import AVFoundation // thư viện của hệ thống làm việc với âm thanh

class WaterViewController: UIViewController {

    @IBOutlet weak var waterView: UIView!
    @IBOutlet weak var laBel: UILabel!
    
    var time: Timer!
    var count: Float = 0
    var a: Int = 20
    
    // khai báo 1 biến kiểu
    var soundPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        time = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(runLoop),
                                     userInfo: nil,
                                     repeats: true)
        laBel.text = "\(a)"
        playSound()
    }
    @objc func runLoop(){
       a -= 1
        laBel.text = "\(a)"
        count += Float(CGFloat(view.frame.maxY ) / CGFloat(a) )
        waterView.frame.origin.y = CGFloat(count)
        if a < 1{
        // dừng thời gian
        time.invalidate()
        soundPlayer?.pause()
        }
    }
    
    func playSound(){
        let path = Bundle.main.path(forResource: "bubblewater.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        do {
            soundPlayer = try AVAudioPlayer(contentsOf: url)
            soundPlayer?.play()
            // đặt numberOfLoops = -1 để nó chạy lại khi chạy hêt
            soundPlayer?.numberOfLoops = -1
        } catch{
            print("lỗi")
            // couldn't load file :(
        }
    }
    
}
