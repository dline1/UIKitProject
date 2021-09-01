//
//  BurgerViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 30.08.2021.
//

import UIKit

class BurgerViewController: UIViewController {
    
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
    
    let imageBurgerVolk: UIImageView = {
        let imgVolk = UIImageView()
        imgVolk.image = UIImage(named: "hamburgezr.png")
        imgVolk.contentMode = .scaleAspectFit
        imgVolk.frame = CGRect(x: 50, y: 200, width: 50, height: 50)
        return imgVolk
    }()
    
    let imageBurgerClassic: UIImageView = {
        let imgCla = UIImageView()
        imgCla.image = UIImage(named: "burgerrr.png")
        imgCla.contentMode = .scaleAspectFit
        imgCla.frame = CGRect(x: 50, y: 300, width: 50, height: 50)
        return imgCla
    }()
    
    let imageBurgerKuriniy: UIImageView = {
        let imgK = UIImageView()
        imgK.image = UIImage(named: "burgeer.png")
        imgK.contentMode = .scaleAspectFit
        imgK.frame = CGRect(x: 50, y: 400, width: 50, height: 50)
        return imgK
    }()
    
    
    let labelBurg: UILabel = {
        let labelB = UILabel()
        labelB.text = "Голодный Волк"
        labelB.textColor = UIColor.black
        labelB.frame = CGRect(x: 145, y: 200, width: 160, height: 60)
        labelB.font = UIFont.systemFont(ofSize: 16)
        return labelB
    }()
    
    let labelBurgClasic: UILabel = {
        let labelC = UILabel()
        labelC.text = "Классический"
        labelC.textColor = UIColor.black
        labelC.frame = CGRect(x: 145, y: 300, width: 160, height: 60)
        labelC.font = UIFont.systemFont(ofSize: 16)
        return labelC
    }()
    
    let labelJenaP: UILabel = {
        let labelJ = UILabel()
        labelJ.text = "Жена Петуха"
        labelJ.textColor = UIColor.black
        labelJ.frame = CGRect(x: 145, y: 400, width: 160, height: 60)
        labelJ.font = UIFont.systemFont(ofSize: 16)
        return labelJ
    }()
    
    
    let labelBurgGR: UILabel = {
        let labelG = UILabel()
        labelG.text = "150g"
        labelG.textColor = UIColor.black
        labelG.frame = CGRect(x: 65, y: 230, width: 160, height: 60)
        labelG.font = UIFont.systemFont(ofSize: 10)
        return labelG
    }()
    
    let labelBurgCl: UILabel = {
        let label = UILabel()
        label.text = "120g"
        label.textColor = UIColor.black
        label.frame = CGRect(x: 65, y: 325, width: 160, height: 60)
        label.font = UIFont.systemFont(ofSize: 10)
        return label
    }()
    
    let labelBurgJenaPet: UILabel = {
        let lab = UILabel()
        lab.text = "100g"
        lab.textColor = UIColor.black
        lab.frame = CGRect(x: 65, y: 427, width: 160, height: 60)
        lab.font = UIFont.systemFont(ofSize: 10)
        return lab
    }()
    
    let textField: UITextField = {
        let textF = UITextField()
        textF.frame = CGRect(x: 110, y: 270, width: 0, height: 0)
        return textF
    }()
    
    let textFieldTwo: UITextField = {
        let textFi = UITextField()
        textFi.frame = CGRect(x: 110, y: 370, width: 0, height: 0)
        return textFi
    }()
    
    let textFieldThre: UITextField = {
        let textFil = UITextField()
        textFil.frame = CGRect(x: 110, y: 470, width: 0, height: 0)
        return textFil
    }()
    
    let buttonZacaz: UIButton = {
        let butZ = UIButton()
        butZ.frame = CGRect(x: 292, y: 213, width: 55, height: 35)
        butZ.setTitle("оkay", for: .normal)
        butZ.setTitle("okay", for: .highlighted)
        butZ.backgroundColor = UIColor.systemRed
        butZ.layer.cornerRadius = 12
        butZ.layer.borderWidth = 1
        butZ.layer.borderColor = UIColor.black.cgColor
        butZ.setTitleColor(UIColor.white, for: .normal)
        butZ.setTitleColor(UIColor.systemGray2, for: .highlighted)
        butZ.addTarget(self, action: #selector(switchPushVC), for: .touchUpInside)
        return butZ
    }()
    
    let buttonZacazTwo: UIButton = {
        let butZe = UIButton()
        butZe.frame = CGRect(x: 292, y: 313, width: 55, height: 35)
        butZe.setTitle("оkay", for: .normal)
        butZe.setTitle("okay", for: .highlighted)
        butZe.backgroundColor = UIColor.systemRed
        butZe.layer.cornerRadius = 12
        butZe.layer.borderWidth = 1
        butZe.layer.borderColor = UIColor.black.cgColor
        butZe.setTitleColor(UIColor.white, for: .normal)
        butZe.setTitleColor(UIColor.systemGray2, for: .highlighted)
        butZe.addTarget(self, action: #selector(switchPushVC), for: .touchUpInside)
        return butZe
    }()
    
    let buttonZacazThre: UIButton = {
        let butT = UIButton()
        butT.frame = CGRect(x: 292, y: 413, width: 55, height: 35)
        butT.setTitle("оkay", for: .normal)
        butT.setTitle("okay", for: .highlighted)
        butT.backgroundColor = UIColor.systemRed
        butT.layer.cornerRadius = 12
        butT.layer.borderWidth = 1
        butT.layer.borderColor = UIColor.black.cgColor
        butT.setTitleColor(UIColor.white, for: .normal)
        butT.setTitleColor(UIColor.systemGray2, for: .highlighted)
        butT.addTarget(self, action: #selector(switchPushVC), for: .touchUpInside)
        return butT
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(labelMemu)
     
        view.addSubview(imageBurgerVolk)
        view.addSubview(imageBurgerClassic)
        view.addSubview(imageBurgerKuriniy)
    
        view.addSubview(labelBurg)
        view.addSubview(labelBurgClasic)
        view.addSubview(labelJenaP)
        
        view.addSubview(labelBurgGR)
        view.addSubview(labelBurgCl)
        view.addSubview(labelBurgJenaPet)
        
        
        view.addSubview(textField)
        view.addSubview(textFieldTwo)
        view.addSubview(textFieldThre)
        
        textField.liner()
        textFieldTwo.liner()
        textFieldThre.liner()
   
        view.addSubview(buttonZacaz)
        view.addSubview(buttonZacazTwo)
        view.addSubview(buttonZacazThre)
    }
    
    //MARK: -Method
    @objc func cancel (sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
   
    //MARK: -Method
    @objc func switchPushVC(sender: UIButton) {
        var TwoBurger = TwoBurgerViewController()
        let byrg = BurgerViewController()
        
        switch sender {
        case buttonZacaz :
            TwoBurger = TwoBurgerViewController(labZacazBurger: labelBurg.text!, imagetitle: imageBurgerVolk.image!)
        case buttonZacazTwo:
            TwoBurger.imageBurgTwo = byrg.imageBurgerClassic.image
            TwoBurger = TwoBurgerViewController(labZacazBurger: labelBurgClasic.text!, imagetitle: imageBurgerClassic.image!)
        case buttonZacazThre:
            TwoBurger = TwoBurgerViewController(labZacazBurger: labelJenaP.text!, imagetitle: imageBurgerKuriniy.image!)
        default:
            break
        }
        navigationController?.pushViewController(TwoBurger, animated: true)
  }

}

extension UITextField {
    func liner() {
        let myLine = CALayer()
        myLine.frame = CGRect(x: 0, y: frame.size.height - 3, width: 230, height: 1)
        myLine.backgroundColor = UIColor.systemGray4.cgColor
        layer.addSublayer(myLine)
    }
   

}
