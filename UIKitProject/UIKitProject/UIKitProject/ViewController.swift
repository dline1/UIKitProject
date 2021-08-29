//
//  ViewController.swift
//  UIKitProject
//
//  Created by Arthur111  on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {
      
    let label: UILabel = {
        let labelT = UILabel()
        labelT.text = "Мировое время ⏰"
        labelT.textColor = UIColor.black
        labelT.frame = CGRect(x: 10, y: 20, width: 10, height: 10)
        return labelT
    }()
    
    override func viewDidLoad() { 
        super.viewDidLoad()
        view.backgroundColor = .black
        navigationItem.titleView = label
    }

    

}

