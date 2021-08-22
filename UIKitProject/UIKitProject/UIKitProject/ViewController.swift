//
//  ViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 22.08.2021.
//

import UIKit

// 5. Создать второе приложение MVC у которого на экране будет кнопка "начать" которая вызывает Алерт с сообщением "введите слово"

// Model
class OurWord {
    var word = String()
    var newWord = String()
    func compair(word: String) {
        if word == "leohl" {
            newWord = "hello"
        } else {
            newWord = "Try again!"
        }
    }
}

// Controller
class ViewController: UIViewController {
    let ourText = OurWord()
    
// View
    var lable = UILabel()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

// Controller
        
        button.frame = CGRect(x: 100, y: 100, width: 150, height: 70)
        button.backgroundColor = .systemGreen
        button.setTitle("Start", for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(alert), for: .touchUpInside)
        
        lable.frame = CGRect(x: 100, y: 200, width: 150, height: 70)
        lable.backgroundColor = .lightGray
        lable.textColor = UIColor.white
        lable.textAlignment = NSTextAlignment.center
        view.addSubview(lable)
    }
// 6. Нужно ввести "leohl" в Алерт нажимаете "ок" отдаете контролеру а контролер отдаст это в модель которая из буквосочетания "leohl"вернет слово "hello" контролеру а контролер отдаст это лейблу и отобразит это на экране
    
    @objc func alert() {
        let alertController = UIAlertController(title: "Attantion", message: "Input word:  leohl", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action)in
            let text = alertController.textFields?.first
            self.ourText.word = text!.text!
            
            self.ourText.compair(word: self.ourText.word)
            self.lable.text = self.ourText.newWord
        }
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
}
