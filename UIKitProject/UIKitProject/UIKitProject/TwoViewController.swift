//
//  TwoViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 28.08.2021.
//

import UIKit

class TwoViewController: UIViewController {
    let labelV: UILabel = {
        let labelV = UILabel()
        labelV.text = "Будильник ⏰"
        labelV.textColor = UIColor.black
        labelV.frame = CGRect(x: 10, y: 10, width: 10, height: 10)
        return labelV
    }()
    
    let label: UILabel = {
        let labelT = UILabel()
        labelT.text = "Править"
        labelT.textColor = UIColor.orange
        labelT.frame = CGRect(x: 20, y: 90, width: 100, height: 50)
        labelT.font = UIFont.systemFont(ofSize: 15)
        return labelT
    }()
    
    let button: UIButton = {
        let but = UIButton()
        but.frame = CGRect(x: 320, y: 90, width: 100, height: 50)
        but.setImage(UIImage(systemName: "plus"), for: .normal)
        but.tintColor = UIColor.systemOrange
        but.setTitleColor(UIColor.systemOrange, for: .normal)
        return but
    }()
    
    
    let labelOne: UILabel = {
        let labelg = UILabel()
        labelg.text = "Будильник"
        labelg.textColor = UIColor.white
        labelg.frame = CGRect(x: 20, y: 130, width: 200, height: 80)
        labelg.font = UIFont.systemFont(ofSize: 35)
        return labelg
    }()
    
    
    let labelTwo: UILabel = {
        let labelh = UILabel()
        labelh.text = "🛌Сон | Пробуждение"
        labelh.textColor = UIColor.white
        labelh.frame = CGRect(x: 20, y: 190, width: 190, height: 60)
        labelh.font = UIFont.systemFont(ofSize: 18)
        return labelh
    }()
    
    let textLineOne: UITextField = {
        let textOne = UITextField()
        textOne.frame = CGRect(x: 10, y: 240, width: 0, height: 0)
        textOne.resignFirstResponder()
        return textOne
    }()
    
    let labelY: UILabel = {
        let labelk = UILabel()
        labelk.text = "Нет будильника"
        labelk.textColor = UIColor.systemGray
        labelk.frame = CGRect(x: 20, y: 246, width: 150, height: 60)
        labelk.font = UIFont.systemFont(ofSize: 17)
        return labelk
    }()
    
    let buttonNastr: UIButton = {
        let butNast = UIButton()
        butNast.frame = CGRect(x: 275, y: 260, width: 100, height: 30)
        butNast.setTitle("Настроить", for: .normal)
        butNast.setTitle("Настроить", for: .highlighted)
        butNast.setTitleColor(UIColor.systemOrange, for: .normal)
        butNast.setTitleColor(UIColor.systemGray, for: .highlighted)
        butNast.backgroundColor = UIColor(red: 43/255, green: 43/255, blue: 43/255, alpha: 100/255)
        butNast.layer.cornerRadius = 12
        return butNast
    }()
    
    let textFieldL: UITextField = {
        let textFieldsN = UITextField()
        textFieldsN.frame = CGRect(x: 10, y: 310, width: 0, height: 0)
        return textFieldsN
    }()
    
    let labelDrugie: UILabel = {
        let labelD = UILabel()
        labelD.text = "Другие"
        labelD.textColor = UIColor.white
        labelD.frame = CGRect(x: 20, y: 320, width: 120, height: 60)
        labelD.font = UIFont.systemFont(ofSize: 20)
        return labelD
    }()
    
    let textFieldLk: UITextField = {
        let textFieldsa = UITextField()
        textFieldsa.frame = CGRect(x: 10, y: 370, width: 0, height: 0)
        return textFieldsa
    }()
    
    let labelTime: UILabel = {
        let labelTi = UILabel()
        labelTi.text = "10:00"
        labelTi.textColor = UIColor.white
        labelTi.frame = CGRect(x: 20, y: 260, width: 150, height: 300)
        labelTi.font = UIFont.systemFont(ofSize: 50)
        return labelTi
    }()
    
    let labelBud: UILabel = {
        let labelb = UILabel()
        labelb.text = "Будильник"
        labelb.textColor = UIColor.white
        labelb.frame = CGRect(x: 20, y: 420, width: 120, height: 60)
        labelb.font = UIFont.systemFont(ofSize: 13)
        return labelb
    }()
    
    
    let labelTimeTwo: UILabel = {
        let labelTw = UILabel()
        labelTw.text = "10:15"
        labelTw.textColor = UIColor.white
        labelTw.frame = CGRect(x: 20, y: 360, width: 150, height: 300)
        labelTw.font = UIFont.systemFont(ofSize: 50)
        return labelTw
    }()
    
    let labelBudi: UILabel = {
        let labe = UILabel()
        labe.text = "Будильник"
        labe.textColor = UIColor.white
        labe.frame = CGRect(x: 20, y: 520, width: 120, height: 60)
        labe.font = UIFont.systemFont(ofSize: 13)
        return labe
    }()
    
    let labelTimeFree: UILabel = {
        let lab = UILabel()
        lab.text = "18:00"
        lab.textColor = UIColor.white
        lab.frame = CGRect(x: 20, y: 460, width: 150, height: 300)
        lab.font = UIFont.systemFont(ofSize: 50)
        return lab
    }()
    
    let labelBu: UILabel = {
        let labe = UILabel()
        labe.text = "Будильник"
        labe.textColor = UIColor.white
        labe.frame = CGRect(x: 20, y: 620, width: 120, height: 60)
        labe.font = UIFont.systemFont(ofSize: 13)
        return labe
    }()
    
    let textFie: UITextField = {
        let textField = UITextField()
        textField.frame = CGRect(x: 10, y: 470, width: 0, height: 0)
        return textField
    }()
    
    let textFief: UITextField = {
        let textFieldg = UITextField()
        textFieldg.frame = CGRect(x: 10, y: 570, width: 0, height: 0)
        return textFieldg
    }()
    
    let textFiefj: UITextField = {
        let textFieldgh = UITextField()
        textFieldgh.frame = CGRect(x: 10, y: 670, width: 0, height: 0)
        return textFieldgh
    }()
    
    let switchOne: UISwitch = {
        let swit = UISwitch()
        swit.frame  = CGRect(x: 320, y: 405, width: 100, height: 50)
        swit.isOn = true
        return swit
    }()
    
    let switchTwo: UISwitch = {
        let swi = UISwitch()
        swi.frame  = CGRect(x: 320, y: 505, width: 100, height: 50)
        swi.isOn = false
        return swi
    }()
    
    let switchTfre: UISwitch = {
        let sw = UISwitch()
        sw.frame  = CGRect(x: 320, y: 605, width: 100, height: 50)
        sw.isOn = false
        return sw
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .black
        
        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(labelOne)
        view.addSubview(labelTwo)
        view.addSubview(labelY)
        view.addSubview(buttonNastr)
        view.addSubview(textFieldL)
        view.addSubview(labelDrugie)
        view.addSubview(textFieldLk)
        view.addSubview(labelTime)
        view.addSubview(labelBud)
        view.addSubview(labelTimeTwo)
        view.addSubview(labelBudi)
        view.addSubview(labelTimeFree)
        view.addSubview(labelBu)
        view.addSubview(textFie)
        view.addSubview(textFief)
        view.addSubview(textFiefj)
        view.addSubview(switchOne)
        view.addSubview(switchTwo)
        view.addSubview(switchTfre)
        
        
        textFieldL.line()
        textLineOne.line()
        textFieldLk.line()
        textFie.line()
        textFief.line()
        textFiefj.line()
        
        view.addSubview(textLineOne)
        navigationItem.titleView = labelV
    
    }
    
   

}

extension UITextField {
    func line() {
        let myLine = CALayer()
        myLine.frame = CGRect(x: 0, y: frame.size.width - 1, width: 400, height: 1)
        myLine.backgroundColor = UIColor.systemGray.cgColor
        layer.addSublayer(myLine)
    }
}
