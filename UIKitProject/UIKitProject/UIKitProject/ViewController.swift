//
//  ViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 22.08.2021.
//
import UIKit
//1. Создать экран регистрации где нужно ввести логин и пароль 2 поля и кнопка вход которая ведёт на второй экран.
class ViewController: UIViewController {

    let labelBrithDay = UILabel()
    let labelSignIn = UILabel()
    let labelEmail = UILabel()
    let labelPassword = UILabel()
    let labelTouchId = UILabel()
    
    let textFieldEmail = UITextField()
    let textFieldPassword = UITextField()
    
    let switchTap = UISwitch()
    
    let eyeeButton = UIButton()
    let buttonSender = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

       //create labelBrithDay
        labelBrithDay.frame = CGRect(x: 45, y: 100, width: 300, height: 100)
        labelBrithDay.textAlignment = .center
        labelBrithDay.textColor = .systemBlue
        labelBrithDay.text = "Brithday Reminder"
        labelBrithDay.font = UIFont.boldSystemFont(ofSize: 30)
        labelBrithDay.layer.borderWidth = 2
        labelBrithDay.layer.borderColor = UIColor.lightGray.cgColor
        labelBrithDay.layer.cornerRadius = 9
        view.addSubview(labelBrithDay)
    
 
        //create labelSignIn
        labelSignIn.frame = CGRect(x: 35, y: 230, width: 140, height: 150)
        labelSignIn.textAlignment = .left
        labelSignIn.font = UIFont.systemFont(ofSize: 30)
        labelSignIn.text = "Sign in"
        labelSignIn.textColor = .black
        view.addSubview(labelSignIn)
    
        //create labelEmail
        labelEmail.frame = CGRect(x: 35, y: 350, width: 220, height: 50)
        labelEmail.textAlignment = .left
        labelEmail.text = "Email"
        labelEmail.font = UIFont.systemFont(ofSize: 20)
        labelEmail.textColor = UIColor.systemBlue
        view.addSubview(labelEmail)
    
    
        //create textFielderEmail
        textFieldEmail.frame = CGRect(x: 35, y: 380, width: 280, height: 50)
        textFieldEmail.placeholder = "petrov@mail.ru"
        view.addSubview(textFieldEmail)
    

        //create labelPassword
        labelPassword.frame = CGRect(x: 35, y: 440, width: 220, height: 50)
        labelPassword.textAlignment = .left
        labelPassword.textColor = UIColor.systemBlue
        labelPassword.font = UIFont.systemFont(ofSize: 20)
        labelPassword.text = "Password"
        view.addSubview(labelPassword)
    
   
        //create textFieldPassword
        textFieldPassword.frame = CGRect(x: 35, y: 470, width: 280, height: 50)
        textFieldPassword.placeholder = "password"
        textFieldPassword.isSecureTextEntry = true
        view.addSubview(textFieldPassword)


        //create eyeeButton
        eyeeButton.frame = CGRect(x: 300, y: 470, width: 50, height: 50)
        eyeeButton.setImage(UIImage(systemName: "eye"), for: .normal)
        eyeeButton.tintColor = UIColor.systemGray
        eyeeButton.addTarget(self, action: #selector(passwordShow), for: .touchUpInside)
        view.addSubview(eyeeButton)

        
        //create labelTouchId
        labelTouchId.frame = CGRect(x: 150, y: 520, width: 140, height: 70)
        labelTouchId.text = "Вход по Face ID"
        view.addSubview(labelTouchId)
    
        //create switch
        switchTap.frame = CGRect(x: 280, y: 540, width: 50, height: 50)
        switchTap.setOn(true, animated: true)
        view.addSubview(switchTap)
    
   
        //create buttonSender
        buttonSender.frame = CGRect(x: 80, y: 650, width: 250, height: 70)
        buttonSender.setTitle("Войти", for: .normal)
        buttonSender.backgroundColor = UIColor.systemBlue
        buttonSender.addTarget(self, action: #selector(toSecondVC(parameterSender:)), for: .touchUpInside)
        view.addSubview(buttonSender)
    
        //create line of textFieldEmail or textFieldPassword
        textFieldEmail.line()
        textFieldPassword.line()
        
    }

     //MARK: method
    
    @objc func passwordShow() {
        textFieldPassword.isSecureTextEntry = false
        
    }

    @objc func toSecondVC(parameterSender: Any) {
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)

    }

}
// //MARK: create for (UITextField)
extension UITextField {

    func line() {
        let myLine = CALayer()
        myLine.frame = CGRect(x: 0, y: frame.height - 2, width: 300, height: 2)
        myLine.backgroundColor = UIColor.systemGray.cgColor
        layer.addSublayer(myLine)
    }
    

}
