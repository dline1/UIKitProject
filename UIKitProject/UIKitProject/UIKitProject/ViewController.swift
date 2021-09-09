//
//  ViewController.swift
//  UIKitProject
//
//  Created by Arthur111  on 22.08.2021.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    let krasni: UILabel = {
        let kr = UILabel()
        kr.text = "Касный"
        kr.textAlignment = .center
        kr.textColor = UIColor.black
        kr.translatesAutoresizingMaskIntoConstraints = false
        return kr
    }()
    
    let jelti: UILabel = {
        let jl = UILabel()
        jl.text = "Желтый"
        jl.textAlignment = .center
        jl.textColor = UIColor.black
        jl.translatesAutoresizingMaskIntoConstraints = false
        return jl
    }()
    
    let zeleniy: UILabel = {
        let zl = UILabel()
        zl.text = "Зеленый"
        zl.textAlignment = .center
        zl.textColor = UIColor.black
        zl.translatesAutoresizingMaskIntoConstraints = false
        return zl
    }()
    
    
    let scrol: UIScrollView = {
      let sc = UIScrollView()
        sc.isScrollEnabled = true
        return sc
    }()
    
    //MARK: - Visual components
    
    private let blackView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    
    private let redView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    private let yellowView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()
    
    private let greenView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    //MARK: - UIViewController
    
       override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(blackView)
        blackView.addSubview(redView)
        blackView.addSubview(yellowView)
        blackView.addSubview(greenView)
        view.center = blackView.center
       
        redView.addSubview(krasni)
        yellowView.addSubview(jelti)
        greenView.addSubview(zeleniy)
        
        view.addSubview(scrol)
       
        
        scrolV()
        
        blackViewF()
        redViewF()
        yellowViewF()
        greenViewF()
      
       
        krasniy()
        jeltiy()
        zeleniyy()
      
       }
    
    func blackViewF(){
    
        blackView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().multipliedBy(1)
            $0.width.equalToSuperview().multipliedBy(0.6)
            $0.height.equalToSuperview().multipliedBy(0.7)
        }
    }
    
    func redViewF() {
        redView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().multipliedBy(0.34)
            $0.width.equalToSuperview().multipliedBy(0.98)
            $0.height.equalToSuperview().multipliedBy(0.32)
         
            
        }
    }

    func yellowViewF() {
        yellowView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().multipliedBy(1.0)
            $0.width.equalToSuperview().multipliedBy(0.98)
            $0.height.equalToSuperview().multipliedBy(0.32)
            
        }
    }
    
    func greenViewF() {
        greenView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().multipliedBy(1.66)
            $0.width.equalToSuperview().multipliedBy(0.98)
            $0.height.equalToSuperview().multipliedBy(0.32)
        }
    }

    func krasniy(){
        krasni.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().multipliedBy(1)
            $0.width.equalToSuperview().multipliedBy(0.3)
            $0.height.equalToSuperview().multipliedBy(0.35)
        }
    }

    func jeltiy() {
        jelti.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().multipliedBy(1)
            $0.width.equalToSuperview().multipliedBy(0.3)
            $0.height.equalToSuperview().multipliedBy(0.4)
        }
    }

    func zeleniyy() {
        zeleniy.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().multipliedBy(1)
            $0.width.equalToSuperview().multipliedBy(0.4)
            $0.height.equalToSuperview().multipliedBy(0.4)
        }
    }
        
    func scrolV(){
        scrol.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().multipliedBy(1)
            $0.width.equalToSuperview().multipliedBy(0.6)
            $0.height.equalToSuperview().multipliedBy(0.7)
        }
    }
   
    


}

