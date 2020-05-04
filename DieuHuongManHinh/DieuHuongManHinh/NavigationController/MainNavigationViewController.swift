//
//  MainNavigationViewController.swift
//  DieuHuongManHinh
//
//  Created by Ong_Lao_Ngao on 4/21/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class MainNavigationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 1. sử dụng title của navigationItem
        self.navigationItem.title = "Main Navigation"
        //2. Hoặc sử dụng thuộc tính title của VC
        //title = "Main"
        
        // tạo BarButtonItem
        let searchButton = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(goSearch))
        
        self.navigationItem.rightBarButtonItem = searchButton
        
        // tạo
        let goButton = UIBarButtonItem(title: "Go", style: .done, target: self, action: #selector(goSearch))
        let goImage = UIBarButtonItem(image: UIImage(named: "home")?.withRenderingMode(.alwaysTemplate), style: .done, target: nil, action: #selector(goSearch))
        self.navigationItem.rightBarButtonItems = [searchButton, goButton, goImage]
    }
   
    @objc func goSearch(){
        
        let secondVC = SecondViewController()
        
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    

}
