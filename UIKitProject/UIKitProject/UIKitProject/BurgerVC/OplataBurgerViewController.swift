//
//  OplataBurgerViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 30.08.2021.
//

import UIKit

class OplataBurgerViewController: UIViewController {
    
    let buttonApp: UIButton = {
        let butApp = UIButton()
        butApp.frame = CGRect(x: 120, y: 700, width: 150, height: 50)
        butApp.layer.cornerRadius = 15
        butApp.backgroundColor = .black
        butApp.setTitle("Оплатить", for: .normal)
        butApp.setTitle("Оплатить", for: .highlighted)
        butApp.setTitleColor(UIColor.white, for: .normal)
        butApp.setTitleColor(UIColor.systemGray, for: .highlighted)
        butApp.addTarget(self, action: #selector(pay), for: .touchUpInside)

        return butApp
    }()
    
    let label: UILabel = {
        let labelT = UILabel()
        labelT.text = "Ваш Заказ:"
        labelT.textColor = UIColor.black
        labelT.frame = CGRect(x: 40, y: 100, width: 120, height: 60)
        labelT.font = UIFont.systemFont(ofSize: 20)
        return labelT
    }()
    
    let labelOrderOne: UILabel = {
        let labelT = UILabel()
        labelT.textColor = UIColor.black
        labelT.font = UIFont.systemFont(ofSize: 20)
        labelT.numberOfLines = 0
        return labelT
    }()

    let switchS: UISwitch = {
        let switchRe = UISwitch()
        switchRe.frame = CGRect(x: 270, y: 560, width: 100, height: 50)
        switchRe.thumbTintColor = UIColor.white
        switchRe.onTintColor = UIColor.systemGreen
        switchRe.addTarget(self, action: #selector(svPolata), for: .valueChanged)
        return switchRe
    }()
    
    let labell: UILabel = {
        let labelT = UILabel()
        labelT.text = "Оплата картой"
        labelT.textColor = UIColor.black
        labelT.frame = CGRect(x: 135, y: 545, width: 160, height: 60)
        labelT.font = UIFont.systemFont(ofSize: 18)
        return labelT
    }()
    
    let switchT: UISwitch = {
        let switchRes = UISwitch()
        switchRes.frame = CGRect(x: 270, y: 620, width: 100, height: 50)
        switchRes.thumbTintColor = UIColor.white
        switchRes.onTintColor = UIColor.systemGreen
        switchRes.addTarget(self, action: #selector(svPolata), for: .valueChanged)
        return switchRes
    }()
    
    let labelz: UILabel = {
        let labelz = UILabel()
        labelz.text = "Наличными"
        labelz.textColor = UIColor.black
        labelz.frame = CGRect(x: 135, y: 603, width: 190, height: 60)
        labelz.font = UIFont.systemFont(ofSize: 18)
        return labelz
    }()
    
    var orderText: String?
    
    convenience init(ordeText: String) {
        self.init()
        self.orderText = ordeText
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        view.addSubview(buttonApp)
        view.addSubview(label)
    
        view.addSubview(switchS)
        view.addSubview(labell)
        view.addSubview(switchT)
        view.addSubview(labelz)
        
        
        labelOrderOne.text = orderText
        labelOrderOne.frame = CGRect(x: 30, y: 90 , width: 340, height: 400)
        view.addSubview(labelOrderOne)
         
       
         title = "Оплата"
    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(false)
//
//
//    }
  
    
    @objc func pay(send: UIButton) {
        
        let alertControllerr = UIAlertController(title: "Заказ оплачен!", message: "Ваш заказ доставят в течении 15 минут! Приятного аппетита", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ок", style: .default) { action in
            let send = NextViewController()
            self.navigationController?.pushViewController(send, animated: false)
        }
    
        alertControllerr.addAction(action)
        present(alertControllerr, animated: true, completion: nil)
    }

    @objc func svPolata(sender: UISwitch) {
        
        if sender.isOn == true {
            switchT.isOn = true
            switchS.isOn = false
        }
        
        if sender.isOn == false {
            switchT.isOn = false
            switchS.isOn = true
        }
 
    
    }

}



