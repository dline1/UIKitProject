//
//  ViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {

    // 1. 1.Написать свое мини приложение на первом экране две кнопки "сложение" и "угадай число"
        let lable = UILabel()
        let buttonOne = UIButton()
        let buttonGame = UIButton()
        
        override func viewDidLoad() {
            super.viewDidLoad()
              myButtonOne()
              myLable()
              myButtonGame()
        }
    // 2. При попадании на этот экран запрашивать ФИО через алер и отображать в UILabel
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            alert(title: "Hello", message: "Введите ФИО", style: .alert)
        }
        //MARK: - Methods:
        //create myLable
        func myLable() {
            lable.frame = CGRect(x: 70, y: 100, width: 200, height: 70)
            lable.textAlignment = NSTextAlignment.left
            lable.text = ""
            lable.backgroundColor = .blue
            lable.textColor = .green
            view.addSubview(lable)
    }
        // create myButtonOne
        func myButtonOne() {
            buttonOne.frame = CGRect(x: 70, y: 200, width: 200, height: 70)
            buttonOne.backgroundColor = .black
            buttonOne.setTitle("Сложение", for: .normal)
            buttonOne.addTarget(self, action: #selector(alertAddition), for: .touchUpInside)
            view.addSubview(buttonOne)
        }
        
        //creat myButtonGame
        func myButtonGame() {
            buttonGame.frame = CGRect(x: 70, y: 300, width: 200, height: 70)
            buttonGame.backgroundColor = .gray
            buttonGame.setTitle("Угадай число", for: .normal)
            buttonGame.addTarget(self, action: #selector(alertfindNumber), for: .touchUpInside)
            view.addSubview(buttonGame)
        }
        
        // alert for initialized
        func alert(title: String, message: String, style: UIAlertController.Style) {
            let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
            let action = UIAlertAction(title: "ОК", style: .default) { (action) in
                let text = alertController.textFields?.first
                self.lable.text! += (text?.text)!
            }
            alertController.addTextField(configurationHandler: nil)
            alertController.addAction(action)
            self.present(alertController, animated: true, completion: nil)
    }
        // 3. По нажатию на "сложение" открывать Алерт который просит ввести число 1 и число 2 и кнопка посчитать выводит результат в любом виде юзеру
            // alertAddition
        @objc func alertAddition(sender: UIButton) {
            let alertController = UIAlertController(title: "Сложение", message: "Введите число", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { (action) in
                let firstNumb = alertController.textFields?.first
                let secondNumb = alertController.textFields?[1]
           
                guard (Int((firstNumb?.text)!) != nil) && (Int((secondNumb?.text)!) != nil ) else {
                    return self.lable.text! = "Введите номер"
                }
                self.lable.text! = ("Сумма: ") + String(Int(firstNumb?.text ?? "")! + Int (secondNumb?.text ?? "")!)
            }
                alertController.addTextField { (textField) in
                    textField.placeholder = "первое число"
                }
            alertController.addTextField { (textFieldOne) in
                    textFieldOne.placeholder = "второе число"
                }
                alertController.addAction(action)
                self.present(alertController, animated: true, completion: nil)
            }
      
        // 4. При нажатии на кнопку "угадай число" нужно придумать игру где нужно угадать число
            // Alert find number
        @objc func alertfindNumber(sender: UIButton) {
            let alertController = UIAlertController(title: "Игра", message: "Как угадать число", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default) { (action) in
                    let number = alertController.textFields?.first
                    guard (Int((number?.text)!) != nil) else {
                        return self.lable.text! = "Введите номер"
                    }
                    let a = String(((Int(number?.text ?? "")! * 2) + 8) / 2)
                    let c = (Int(a)! - 4)
                    self.lable.text! = ("Ваше число: \(c), считаем: (") + (number?.text)! + (" * 2") + (" + 8)") + (" / 2") + (" - 4)") + (" = \(c)")
                }
            
            alertController.addTextField { (textField) in
                textField.isSecureTextEntry = true
            }
                alertController.addAction(action)
                self.present(alertController, animated: true, completion: nil)
        }
}
