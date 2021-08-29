//
//  FreeViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 28.08.2021.
//

import UIKit

class FreeViewController: UIViewController {

    let imageTit: UIImageView = {
        let imgTit = UIImageView()
        imgTit.image = UIImage(systemName: "stopwatch")
        imgTit.tintColor = UIColor.systemGreen
        return imgTit
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = imageTit
        
        view.backgroundColor = .black
   
    }
  
}
