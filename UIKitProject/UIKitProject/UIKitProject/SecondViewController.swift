//
//  ThreViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 22.08.2021.
//

import UIKit
//2. По нажатию на “Войти” переходим на второй экран Birthday (Это не таблица) куда будут добавляться дни рождения с третьего экрана. Лэйблы “18 дней” и ”10 марта, в среду...” захардкожены.

// protocol for send data
protocol SecondViewControllerDelegate: AnyObject {
    func update(text: String, textTwo: String)

}

class SecondViewController: UIViewController, SecondViewControllerDelegate {
    let nameLable = UILabel()
    let personDateLable = UILabel()

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        guard let destination = segue.destination as? TwoViewController else {
            return
        }
        destination.delegate = self

}
    func update(text: String, textTwo: String) {
        nameLable.text = text
        personDateLable.text = textTwo

//        creation profile foto

    let foto = UIImageView(frame: CGRect(x: 20.0, y: 120.5, width: 71.0, height: 71.0))
        foto.image = UIImage(systemName: "person.circle.fill")
        foto.tintColor = .black
        self.view.addSubview(foto)

    }
    
      override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        navigationItem.title = "Brithday"
    
//        // create personal data lables
        nameLable.frame = CGRect(x: 100, y: 115, width: 200, height: 50)
        nameLable.font = UIFont.boldSystemFont(ofSize: 15)
        view.addSubview(nameLable)

        personDateLable.frame = CGRect(x: 100, y: 150, width: 200, height: 50)
        personDateLable.font = UIFont.boldSystemFont(ofSize: 15)
        view.addSubview(personDateLable)

        // create button add
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(toThirdVC(parameterSender:)))

      }
    // MARK: - Methods

        @objc func toThirdVC(parameterSender: Any) {
            let thirdVC = TwoViewController()
            thirdVC.delegate = self
            present(thirdVC, animated: true, completion: nil)
        }
}

