//
//  TwoViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 28.08.2021.
//

import UIKit

class TwoViewController: UIViewController {
    
    
    let labelMemu: UILabel = {
        let labelM = UILabel()
        labelM.text = "Menu"
        labelM.textAlignment = .center
        labelM.textColor = UIColor.black
        labelM.frame = CGRect(x: 140, y: 100, width: 100, height: 50)
        labelM.layer.borderWidth = 2
        labelM.layer.cornerRadius = 20
        labelM.layer.borderColor = CGColor.init(red: 202/255, green: 7/255, blue: 0/255, alpha: 100/255)
        labelM.font = UIFont.systemFont(ofSize: 25)
        return labelM
    }()
    
    let buttonBurger: UIButton = {
        let butB = UIButton()
        butB.frame = CGRect(x: 140, y: 180, width: 100, height: 100)
        butB.setImage(UIImage(named: "byg.png"), for: .normal)
        butB.setImage(UIImage(named: "burger.png"), for: .highlighted)
        butB.addTarget(self, action: #selector(switchPushVC), for: .touchUpInside)
        butB.setTitleColor(UIColor.systemBlue, for: .normal)
        return butB
    }()
    
    let buttonPizza: UIButton = {
        let butP = UIButton()
        butP.frame = CGRect(x: 140, y: 380, width: 100, height: 100)
        butP.setImage(UIImage(named: "pizza.png"), for: .normal)
        butP.setImage(UIImage(named: "pizzaas.png"), for: .highlighted)
        butP.addTarget(self, action: #selector(switchPushVC), for: .touchUpInside)
        butP.setTitleColor(UIColor.systemBlue, for: .normal)
        return butP
    }()
    
    let buttonColla: UIButton = {
        let butC = UIButton()
        butC.frame = CGRect(x: 140, y: 580, width: 100, height: 100)
        butC.setImage(UIImage(named: "softdrinks.png"), for: .normal)
        butC.setImage(UIImage(named: "softdrinkds.png"), for: .highlighted)
        butC.addTarget(self, action: #selector(switchPushVC), for: .touchUpInside)
        butC.setTitleColor(UIColor.systemBlue, for: .normal)
        return butC
    }()

    let labelBurger: UILabel = {
        let labelB = UILabel()
        labelB.text = "Burger"
        labelB.textColor = UIColor.systemRed
        labelB.frame = CGRect(x: 165, y: 270, width: 140, height: 60)
        labelB.font = UIFont.systemFont(ofSize: 15)
        return labelB
    }()
    
    let labelPizza: UILabel = {
        let labelP = UILabel()
        labelP.text = "PIZZA"
        labelP.textColor = UIColor.systemRed
        labelP.frame = CGRect(x: 170, y: 475, width: 140, height: 60)
        labelP.font = UIFont.systemFont(ofSize: 15)
        return labelP
    }()
    
    
    let labelColla: UILabel = {
        let labelC = UILabel()
        labelC.text = "Drink"
        labelC.textColor = UIColor.systemRed
        labelC.frame = CGRect(x: 170, y: 670, width: 140, height: 60)
        labelC.font = UIFont.systemFont(ofSize: 15)
        return labelC
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .white
        view.addSubview(labelMemu)
        view.addSubview(buttonBurger)
        view.addSubview(buttonPizza)
        view.addSubview(buttonColla)
    
        view.addSubview(labelBurger)
        view.addSubview(labelPizza)
        view.addSubview(labelColla)
    
        navigationController?.isNavigationBarHidden = false
    }
 
    //MARK: -Method
    
    @objc func cancel (sender: UIButton) {
    
        dismiss(animated: true, completion: nil)
    }
   
    //MARK: -Method pushVC
    
   @objc func switchPushVC(sender: UIButton) {
        let burgVC = BurgerViewController()
        //let pizzaVC = PizzaViewController()
        //let colaVC = ColaViewController()
        
        switch sender {
        case buttonBurger:
            navigationController?.pushViewController(burgVC, animated: true)
       // case buttonPizza:
        //  present(pizzaVC, animated: true, completion: nil)
      //  case buttonColla:
       //   present(colaVC, animated: true, completion: nil)
        default:
            break
        }
        
    }



}


