//
//  ViewController.swift
//  UIKitProject
//
//  Created by Arthur111  on 22.08.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
      
    let labelEmail: UILabel = {
        let lEmail = UILabel()
        lEmail.text = "Email:"
        lEmail.textColor = UIColor.systemRed
        lEmail.frame = CGRect(x: 30, y: 323, width: 120, height: 60)
        lEmail.font = UIFont.systemFont(ofSize: 20)
        return lEmail
    }()
    
    
    let labelPassword: UILabel = {
        let lPassword = UILabel()
        lPassword.text = "Password:"
        lPassword.textColor = UIColor.systemRed
        lPassword.frame = CGRect(x: 30, y: 425, width: 120, height: 60)
        lPassword.font = UIFont.systemFont(ofSize: 20)
        return lPassword
    }()
    
    let textFieldEmail: UITextField = {
        let textEmail = UITextField()
        textEmail.frame = CGRect(x: 30, y: 377, width: 200, height: 40)
        textEmail.placeholder = "Введите Email"
        return textEmail
    }()
    
    let textFieldPassword: UITextField = {
        let textPassword = UITextField()
        textPassword.frame = CGRect(x: 30, y: 476, width: 200, height: 40)
        textPassword.placeholder = "Введите Password"
        textPassword.keyboardType = .numberPad
        textPassword.isSecureTextEntry = true
        return textPassword
    }()
    
    let textLine: UITextField = {
        let textLine = UITextField()
        textLine.frame = CGRect(x: 25, y: 420, width: 0, height: 0)
        return textLine
    }()
    
    let textLineTwo: UITextField = {
        let textLineTwo = UITextField()
        textLineTwo.frame = CGRect(x: 25, y: 520, width: 0, height: 0)
        return textLineTwo
    }()
    
    
    let buttonReturn: UIButton = {
        let butReturn = UIButton()
        butReturn.frame = CGRect(x: 50, y: 720, width: 280, height: 55)
        butReturn.setTitle("Войти", for: .normal)
        butReturn.setTitle("Войти", for: .highlighted)
        butReturn.setTitleColor(UIColor.white, for: .normal)
        butReturn.setTitleColor(UIColor.systemGray, for: .highlighted)
        butReturn.addTarget(self, action: #selector(buttonProdoljit), for: .touchUpInside)
        butReturn.layer.cornerRadius = 27
        butReturn.backgroundColor = UIColor.systemPink
        butReturn.isEnabled = false
        return butReturn
    }()
    
    let switchReserved: UISwitch = {
        let switchReserv = UISwitch()
        switchReserv.isOn = false
        switchReserv.frame = CGRect(x: 270, y: 623, width: 100, height: 50)
        switchReserv.thumbTintColor = UIColor.systemRed
        switchReserv.onTintColor = UIColor.systemGray2
        return switchReserv
    }()
    
    
    
    let labelPromocode: UILabel = {
        let labelPromo = UILabel()
        labelPromo.text = "Have a promo code?"
        labelPromo.textColor = UIColor.black
        labelPromo.frame = CGRect(x: 130, y: 553, width: 150, height: 60)
        labelPromo.font = UIFont.systemFont(ofSize: 13)
        return labelPromo
    }()
    
    let imageTitle: UIImageView = {
        let imgTitle = UIImageView()
        imgTitle.image = UIImage(named: "95.jpg")
        imgTitle.contentMode = .scaleAspectFit
        imgTitle.frame = CGRect(x: 60, y: 70, width: 250, height: 250)
        return imgTitle
    }()
    
    let buttonEye: UIButton = {
        let butEye = UIButton()
        butEye.frame = CGRect(x: 287, y: 465, width: 100, height: 60)
        butEye.tintColor = UIColor.systemGray
        butEye.setImage(UIImage(systemName: "eye"), for: .normal)
        butEye.addTarget(self, action: #selector(eyeOne), for: .touchUpInside)
        butEye.addTarget(self, action: #selector(eyeTwo), for: .touchDown)
        butEye.setTitleColor(UIColor.systemBlue, for: .normal)
        return butEye
    }()
    
    let labelForGpasswd: UILabel = {
        let labelPfGpasswd = UILabel()
        labelPfGpasswd.text = "Forgot your password?"
        labelPfGpasswd.textColor = UIColor.black
        labelPfGpasswd.frame = CGRect(x: 115, y: 610, width: 150, height: 60)
        labelPfGpasswd.font = UIFont.systemFont(ofSize: 13)
        return labelPfGpasswd
    }()
    
    let switchS: UISwitch = {
        let switchRes = UISwitch()
        switchRes.isOn = false
        switchRes.frame = CGRect(x: 270, y: 570, width: 100, height: 50)
        switchRes.thumbTintColor = UIColor.systemRed
        switchRes.onTintColor = UIColor.systemGray2
        return switchRes
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(labelEmail)
        view.addSubview(labelPassword)
        view.addSubview(textFieldEmail)
        view.addSubview(textFieldPassword)
        view.addSubview(textLine)
        view.addSubview(textLineTwo)
        view.addSubview(buttonReturn)
        view.addSubview(switchReserved)
        view.addSubview(labelPromocode)
        view.addSubview(imageTitle)
        view.addSubview(buttonEye)
        view.addSubview(labelForGpasswd)
        view.addSubview(switchS)
        
        textFieldPassword.delegate = self
        textFieldEmail.delegate = self

        textLine.line()
        textLineTwo.line()
    
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textFieldPassword.resignFirstResponder()
        textFieldEmail.resignFirstResponder()
    }
    
    
    //MARK: -Method textSecureOne
    @objc func eyeOne() {
        textFieldPassword.isSecureTextEntry = true
    }
    
    //MARK: -Method textSecureTwo
    @objc func eyeTwo() {
        textFieldPassword.isSecureTextEntry = false
    }

    
    
    //MARK: -Method textFieldDidChangeSelection

    @objc func textFieldDidChangeSelection(_ textField: UITextField) {

        buttonReturn.isEnabled = textFieldEmail.text?.isEmpty == false && textFieldPassword.text?.isEmpty == false

    }

  // MARK: -Method buttonProdoljit

    @objc func buttonProdoljit (sen: UIButton) {
       let twoVC = TwoViewController()
        navigationController?.pushViewController(twoVC, animated: true)
    }

}

extension UITextField {
    
    func line() {
        
        let myLine = CALayer()
        myLine.frame = CGRect(x: 0, y: frame.size.width - 1, width: 330, height: 1)
        myLine.backgroundColor = UIColor.systemGray.cgColor
        layer.addSublayer(myLine)
    }

}
 
 
