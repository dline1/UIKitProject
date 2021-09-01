//
//  TwoBurgerViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 30.08.2021.
//

import UIKit

class TwoBurgerViewController: UIViewController {  

    let labelMemu: UILabel = {
        let labelM = UILabel()
        labelM.text = "Burger"
        labelM.textAlignment = .center
        labelM.textColor = UIColor.black
        labelM.frame = CGRect(x: 140, y: 100, width: 100, height: 50)
        labelM.layer.borderWidth = 2
        labelM.layer.cornerRadius = 20
        labelM.layer.borderColor = CGColor.init(red: 202/255, green: 7/255, blue: 0/255, alpha: 100/255)
        labelM.font = UIFont.systemFont(ofSize: 25)
        return labelM
    }()
    
    var switcOne: UISwitch = {
        let swB = UISwitch()
        swB.frame = CGRect(x: 290, y: 460, width: 100, height: 50)
        swB.thumbTintColor = UIColor.systemRed
        swB.onTintColor = UIColor.systemIndigo
        return swB
    }()
    
    var switcTwo: UISwitch = {
        let swi = UISwitch()
        swi.frame = CGRect(x: 290, y: 530, width: 100, height: 50)
        swi.thumbTintColor = UIColor.systemRed
        swi.onTintColor = UIColor.systemIndigo
        return swi
    }()
    
    var switcThre: UISwitch = {
        let swit = UISwitch()
        swit.frame = CGRect(x: 290, y: 600, width: 100, height: 50)
        swit.thumbTintColor = UIColor.systemRed
        swit.onTintColor = UIColor.systemIndigo
        return swit
    }()
    
    var labelOne1: UILabel = {
        let lab = UILabel()
        lab.text = "Средняя прожарка"
        lab.textColor = UIColor.black
        lab.frame = CGRect(x: 80, y: 520, width: 120, height: 60)
        lab.font = UIFont.systemFont(ofSize: 13)
        return lab
    }()
    
    let labelTwo2: UILabel = {
        let labe = UILabel()
        labe.text = "Грибы"
        labe.textColor = UIColor.black
        labe.frame = CGRect(x: 80, y: 450, width: 120, height: 60)
        labe.font = UIFont.systemFont(ofSize: 13)
        return labe
    }()
    
    let labelThre3: UILabel = {
        let labT = UILabel()
        labT.text = "Заказать с собой"
        labT.textColor = UIColor.black
        labT.frame = CGRect(x: 80, y: 590, width: 120, height: 60)
        labT.font = UIFont.systemFont(ofSize: 13)
        return labT
    }()
    
    let buttonApp: UIButton = {
        let butApp = UIButton()
        butApp.frame = CGRect(x: 120, y: 700, width: 150, height: 50)
        butApp.layer.cornerRadius = 15
        butApp.backgroundColor = .systemRed
        butApp.setTitle("Выбрать", for: .normal)
        butApp.setTitle("Выбрать", for: .highlighted)
        butApp.setTitleColor(UIColor.white, for: .normal)
        butApp.setTitleColor(UIColor.systemGray, for: .highlighted)
        butApp.addTarget(self, action: #selector(savedVibor), for: .touchUpInside)
        return butApp
    }()
    
    var labTit: UILabel = {
        let lab = UILabel()
        lab.frame = CGRect(x: 130, y: 360, width: 140, height: 50)
        lab.textColor = UIColor.black
        lab.font = UIFont.systemFont(ofSize: 20)
        return lab
    }()
    
    let img = UIImageView()
    
    var labZacazLuboy: String?
    var imageTitle: UIImage?
    
    convenience init(labZacazBurger: String, imagetitle: UIImage) {
        self.init()
        self.labZacazLuboy = labZacazBurger
        self.imageTitle = imagetitle
    }
        
    
      
    
   public var imageBurgTwo: UIImage?
        
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .white

        view.addSubview(labelMemu)
        view.addSubview(switcOne)
        view.addSubview(switcTwo)
        view.addSubview(switcThre)
        
        view.addSubview(labelOne1)
        view.addSubview(labelTwo2)
        view.addSubview(labelThre3)
        
        view.addSubview(buttonApp)
        save()
    }
    
    func save() {
        img.image = imageTitle
        img.frame = CGRect(x: 120, y: 200, width: 150, height: 150)
        img.contentMode = .scaleAspectFit
        view.addSubview(img)
        
        labTit.text = labZacazLuboy
        view.addSubview(labTit)
        
    }
    
   
    @objc private func savedVibor() {
        
        var orTex = ""
        var number = 1
        
            
        orTex = String(number) + ".Бургер " + labTit.text! + "\n \n"
            
        if switcOne.isOn {
            number += 1
            orTex += String(number) + ".Грибы   \n \n"
        }
        
        if switcTwo.isOn {
            number += 1
            orTex += String(number) + ".Средняя поджарка  \n \n"
        }
        
        if switcThre.isOn {
            number += 1
            orTex += String(number) + ".Заказать с собой   \n  \n "
        }
    
        let opl = OplataBurgerViewController(ordeText: orTex)
        self.navigationController?.pushViewController(opl, animated: true)
}
}
