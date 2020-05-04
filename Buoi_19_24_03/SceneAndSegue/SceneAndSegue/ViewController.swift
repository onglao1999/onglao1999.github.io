//
//  ViewController.swift
//  SceneAndSegue
//
//  Created by Ong_Lao_Ngao on 3/24/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("Next To Screen 3", for: .normal)
        button.addTarget(self, action: #selector(onPrees2), for: .touchUpOutside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nextButton)
        nextButton.frame = CGRect(x: 30, y: 40, width: 100, height: 150)
        
    }
    @IBAction func unwindFromScreen2(_ segue: UIStoryboardSegue){
        print("back")
    }

    @IBAction func onPresent(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let screen2VC = storyboard.instantiateViewController(identifier: "Sceen2ViewController")
        //khi không muốn người dùng kéo xuống mà muốn để lở lửng màn thì dùng dòng 25
       // screen2VC.isModalInPresentation = true
        screen2VC.modalPresentationStyle = .fullScreen
        
       present(screen2VC, animated: true, completion: nil)
    }
    
    @objc func onPrees2(){
        let screen3VC = Screen3ViewController()
        present(screen3VC, animated: true, completion: nil)
    }
}

