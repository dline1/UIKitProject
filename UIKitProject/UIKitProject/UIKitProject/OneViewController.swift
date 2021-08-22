//
//  ThreViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 22.08.2021.
//

import UIKit
// 2.Создать второй экран Cafe где нужно регистрировать
// гостя поля для ввода фио и через свитчи была ли
// предоплата , заказывали ли стол (да или нет )

// 3. Поля для ввода номера стола
class SecondViewController:
    UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // 5. Добавить кнопку «выставить счёт» расположить на
    //    втором экране и по нажатию выкидывать Алерт
    //    продолжить да или нет, если нет то убираем Алерт если
    //    да то переходим на третий экран
    
    @IBAction func forPaymentButton(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Вы хотите продолжить?", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Вернуться", style: .default, handler: nil)
    
        let actionTwo = UIAlertAction(title: "Продолжить", style: .default) { (action) in
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "Third")
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    alertController.addAction(action)
    alertController.addAction(actionTwo)
    present(alertController, animated: true, completion: nil)
    }
}
