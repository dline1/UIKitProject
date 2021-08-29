//
//  FourViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 28.08.2021.
//

import UIKit

class FourViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
  
    let picker: UIPickerView = {
        let pick = UIPickerView()
        pick.layer.cornerRadius = 15
        return pick
    }()
    
    
    let labelT: UILabel = {
        let labelT = UILabel()
        labelT.text = "Таймер ⏱"
        labelT.textColor = UIColor.black
        labelT.frame = CGRect(x: 10, y: 20, width: 10, height: 10)
        return labelT
    }()
    
 
    let button: UIButton = {
        let but = UIButton()
        but.frame = CGRect(x: 315, y: 550, width: 50, height: 50)
        but.setTitle(">", for:  .normal)
        but.setTitle(">", for: .highlighted)
        but.setTitleColor(UIColor.systemGray, for: .normal)
        but.setTitleColor(UIColor.systemGreen, for: .highlighted)
        return but
    }()
    
    let label: UILabel = {
        let labelT = UILabel()
        labelT.text = "По окончании"
        labelT.textColor = UIColor.white
        labelT.frame = CGRect(x: 30, y: 545, width: 120, height: 60)
        labelT.font = UIFont.systemFont(ofSize: 15)
        return labelT
    }()
    
    let labelRadar: UILabel = {
        let labelR = UILabel()
        labelR.text = "Радар"
        labelR.textColor = UIColor.systemGray
        labelR.frame = CGRect(x: 280, y: 545, width: 120, height: 60)
        labelR.font = UIFont.systemFont(ofSize: 15)
        return labelR
    }()
    
    let viewR: UIView = {
        let viewS = UIView()
        viewS.frame = CGRect(x: 20, y: 550, width: 350, height: 50)
        viewS.layer.cornerRadius = 10
        viewS.backgroundColor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 100/255)
        return viewS
    }()

    let buttonOtmena: UIButton = {
        let buttOtmena = UIButton()
        buttOtmena.frame = CGRect(x: 15, y: 400, width: 100, height: 100)
        buttOtmena.setTitle("Отмена", for: .normal)
        buttOtmena.setTitle("Отмена", for: .highlighted)
        buttOtmena.setTitleColor(UIColor.systemGray, for: .normal)
        buttOtmena.setTitleColor(UIColor.systemGreen, for: .highlighted)
        buttOtmena.backgroundColor = UIColor(red: 43/255, green: 36/255, blue: 35/255, alpha: 100/255)
        buttOtmena.layer.borderWidth = 4
        buttOtmena.layer.borderColor = CGColor(red: 34/255, green: 41/255, blue: 43/255, alpha: 100/255)
        buttOtmena.layer.cornerRadius = 50
        return buttOtmena
    }()
   
    
    let buttonStart: UIButton = {
        let buttStart = UIButton()
        buttStart.frame = CGRect(x: 270, y: 400, width: 100, height: 100)
        buttStart.setTitle("Старт", for: .normal)
        buttStart.setTitle("Старт", for: .highlighted)
        buttStart.setTitleColor(UIColor.systemGreen, for: .normal)
        buttStart.setTitleColor(UIColor.systemGray, for: .highlighted)
        buttStart.backgroundColor = UIColor(red: 10/255, green: 41/255, blue: 16/255, alpha: 100/255)
        buttStart.layer.borderWidth = 4
        buttStart.layer.borderColor = CGColor(red: 10/255, green: 41/255, blue: 16/255, alpha: 100/255)
        buttStart.layer.cornerRadius = 50
        return buttStart
    }()
      
    let arrayOne = ["1 час", "2 часа", "3 часа", "4 часа ", "5 часов", "6 часов","7 часов", "8 часов", "9 часов", "10 часов ", "11 часов", "12 часов","13 часов", "14 часов", "15 часов", "16 часов ", "17 часов", "18 часов","19 часов", "20 часов", "21 час", "22 часа ", "23 часа", "24 часа"]
        
    
    let arrayTwo = ["1 минут", "2 минут", "3 минут", "4 минут ", "5 минут", "6 минут","6 минут", "8 минут", "9 минут", "10 минут ", "11 минут", "12 минут","13 минут", "14 минут", "15 минут", "16 минут ", "17 минут", "18 минут","19 минут", "20 минут", "21 минут", "22 минут ", "23 минут", "24 минут", "25 минут", "26 минут", "27 минут", "28 минут ", "29 минут", "30 минут","31 минут", "32 минут", "33 минут", "34 минут ", "35 минут", "36 минут","37 минут", "38 минут", "39 минут", "40 минут ", "41 минут", "42 минут","43 минут", "44 минут", "45 минут", "46 минут ", "47 минут", "48 минут","49 минут", "50 минут ", "51 минут", "52 минут","53 минут", "54 минут", "55 минут", "56 минут ", "57 минут", "58 минут","59 минут", "60 минут"]
        
    let arrayThree = ["1 секунд", "2 секунд", "3 секунд", "4 секунд ", "5 секунд", "6 секунд","6 секунд", "8 секунд", "9 секунд", "10 секунд ", "11 секунд", "12 секунд","13 секунд", "14 секунд", "15 секунд", "16 секунд ", "17 секунд", "18 секунд","19 секунд", "20 секунд", "21 секунд", "22 секунд ", "23 секунд", "24 секунд", "25 секунд", "26 секунд", "27 секунд", "28 секунд ", "29 секунд", "30 секунд","31 секунд", "32 секунд", "33 секунд", "34 секунд ", "35 ссекунд", "36 секунд","37 секунд", "38 секунд", "39 секунд", "40 секунд ", "41 секунд", "42 секунд","43 секунд", "44 секунд", "45 секунд", "46 секунд ", "47 секунд", "48 секунд","49 ссекунд", "50 секунд ", "51 секунд", "52 секунд","53 секунд", "54 секунд", "55 секунд", "56 секунд ", "57 секунд", "58 секунд","59 секунд", "60 секунд"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = labelT
        view.backgroundColor = .black
        
        view.addSubview(buttonOtmena)
        view.addSubview(buttonStart)
        view.addSubview(viewR)
        view.addSubview(label)
        view.addSubview(labelRadar)
        view.addSubview(button)
        view.addSubview(picker)
        
        picker.dataSource = self
        picker.delegate = self
        
        
        picker.frame = CGRect(x: 0, y: 150, width: 350, height: 150)
}


    @objc(numberOfComponentsInPickerView:) func numberOfComponents(in _: UIPickerView) -> Int {
         return 3
     }

    @objc func pickerView(_: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         switch component {
         case 0:
             return arrayOne.count
         case 1:
             return arrayTwo.count
         case 2:
             return arrayThree.count
         default:
             return NSNotFound
         }
     }

    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
         var attributedString: NSAttributedString!

         switch component {
         case 0:
            attributedString = NSAttributedString(string: arrayOne[row], attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
         case 1:
            attributedString = NSAttributedString(string: arrayTwo[row], attributes: [NSAttributedString.Key.foregroundColor : UIColor.green])
         case 2:
            attributedString = NSAttributedString(string: String(arrayThree[row]), attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
         default:
             attributedString = nil
         }

         return attributedString
     }

     func pickerView(_: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         switch component {
         case 0:
             print(arrayOne[row])
         case 1:
             print(arrayTwo[row])
         case 2:
             print(arrayThree[row])
         default:
             break
         }
     }


}


