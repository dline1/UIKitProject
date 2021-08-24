//
//  ThreViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 23.08.2021.
//

import UIKit

class ThreViewController: UIViewController { 

    
    var imageUrist: UIImageView = {
        let imge = UIImageView()
        imge.frame = CGRect(x: 90, y: 200, width: 200, height: 160)
        imge.clipsToBounds = true
        imge.layer.cornerRadius = 60
        return imge
    }()
    
    var imageGrajd: UIImageView = {
        let imgegr = UIImageView()
        imgegr.frame = CGRect(x: 90, y: 200, width: 200, height: 160)
        imgegr.clipsToBounds = true
        imgegr.layer.cornerRadius = 60
        return imgegr
    }()
    
    var imageZeml: UIImageView = {
        let imgezeml = UIImageView()
        imgezeml.frame = CGRect(x: 90, y: 200, width: 200, height: 160)
        imgezeml.clipsToBounds = true
        imgezeml.layer.cornerRadius = 60
        return imgezeml
    }()
    
    var imageHozy: UIImageView = {
        let imgehozy = UIImageView()
        imgehozy.frame = CGRect(x: 90, y: 200, width: 200, height: 160)
        imgehozy.clipsToBounds = true
        imgehozy.layer.cornerRadius = 60
        return imgehozy
    }()
    
    
    var labelOne: UILabel = {
        let urist = UILabel()
        urist.frame = CGRect(x: 110, y: 340, width: 200, height: 200)
        urist.numberOfLines = 7
        return urist
    }()
    
    
    var labelTwo: UILabel = {
        let grajd = UILabel()
        grajd.frame = CGRect(x: 110, y: 340, width: 200, height: 200)
        grajd.numberOfLines = 7
        return grajd
    }()
    
    var labelThre: UILabel = {
        let zemeln = UILabel()
        zemeln.frame = CGRect(x: 110, y: 340, width: 200, height: 200)
        zemeln.numberOfLines = 7
        return zemeln
    }()
    
    var labelFour: UILabel = {
        let hozyaistv = UILabel()
        hozyaistv.frame = CGRect(x: 110, y: 340, width: 200, height: 200)
        hozyaistv.numberOfLines = 7
        return hozyaistv
    }()

    
    public var imagesO: UIImage?
    public var imagesT: UIImage?
    public var imagesTh: UIImage?
    public var imagesF: UIImage?
    
    
    var labelO: String?
    var labelT: String?
    var labelTh: String?
    var labelF: String?
    
    
    let switchOne: UISwitch = {
        let switch1 = UISwitch()
        switch1.onTintColor = UIColor.systemBlue
        switch1.frame = CGRect(x: 280, y: 700, width: 120, height: 100)
        switch1.thumbTintColor = UIColor.systemGray
        switch1.addTarget(self, action: #selector(switchShow), for: .valueChanged)
        return switch1
    }()
    
    let labelText: UILabel = {
        let text = UILabel()
        text.frame = CGRect(x: 100, y: 690, width: 170, height: 50)
        text.font = UIFont.systemFont(ofSize: 14)
        text.text = "Я согласен с условиями!"
        return text
    }()
  
    let buttonZakaz: UIButton = {
       let zakaz = UIButton()
        zakaz.frame = CGRect(x: 150, y: 740, width: 100, height: 60)
        zakaz.backgroundColor = UIColor(red: 50/255, green: 2/255, blue: 10/255, alpha: 250/255)
        zakaz.setTitle("Заказать", for: .normal)
        zakaz.setTitle("Заказать", for: .highlighted)
        zakaz.setTitleColor(UIColor.systemGray, for: .highlighted)
        zakaz.layer.cornerRadius = 10
        zakaz.isHidden = true
        zakaz.addTarget(self, action: #selector(alertButton), for: .touchUpInside)
        return zakaz
    }()
    
    var labele: UILabel = {
        let lab = UILabel()
        lab.frame = CGRect(x: 120, y: 135, width: 200, height: 50)
        lab.text = "Заказ выполнен!"
        lab.textColor = UIColor.systemGreen
        lab.font = UIFont.systemFont(ofSize: 20)
        lab.isHidden = true
        return lab
    }()
    
    var segmentControl = UISegmentedControl()
    
    var segma = ["Стандарт","Про"]
    
    var textSegment: UILabel = {
        let segmenf = UILabel()
        segmenf.frame = CGRect(x: 110, y: 560, width: 240, height: 50)
        segmenf.font = UIFont.systemFont(ofSize: 15)
        segmenf.textColor = UIColor.systemGray
        return segmenf
    }()
    
    var textSegmentTwo: UILabel = {
        let segme = UILabel()
        segme.frame = CGRect(x: 110, y: 590, width: 240, height: 50)
        segme.font = UIFont.systemFont(ofSize: 15)
        segme.textColor = UIColor.systemGray
        return segme
    }()
    
    
    var textSegmentThre: UILabel = {
        let se = UILabel()
        se.frame = CGRect(x: 110, y: 620, width: 240, height: 50)
        se.font = UIFont.systemFont(ofSize: 15)
        se.textColor = UIColor.systemGray
        return se
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .white
   
        
        saves()
    
    }
 
    
    
    func saves() {
        
        imageUrist.image = imagesO
        view.addSubview(imageUrist)

        imageGrajd.image = imagesT
        view.addSubview(imageGrajd)
        
        imageZeml.image = imagesTh
        view.addSubview(imageZeml)
    
        imageHozy.image = imagesF
        view.addSubview(imageHozy)
  
        labelOne.text = labelO
        view.addSubview(labelOne)
        
        labelTwo.text = labelT
        view.addSubview(labelTwo)
        
        labelThre.text = labelTh
        view.addSubview(labelThre)
        
        labelFour.text = labelF
        view.addSubview(labelFour)
         
        view.addSubview(switchOne)
   
        view.addSubview(labelText)
        view.addSubview(buttonZakaz)
        
        view.addSubview(labele)
    
        
        segmentControl = UISegmentedControl(items: segma)
        segmentControl.selectedSegmentIndex = 0
        segmentControl.frame = CGRect(x: 80, y: 520, width: 230, height: 40)
        segmentControl.selectedSegmentTintColor = UIColor.systemBlue
        segmentControl.addTarget(segma, action: #selector(segmControll), for: .valueChanged)
       
        view.addSubview(segmentControl)
        view.addSubview(textSegment)
        view.addSubview(textSegmentTwo)
        view.addSubview(textSegmentThre)
        
        textSegment.text = "✔️ Защита в суде"
        textSegmentTwo.text = "✔️ Бумажная работа"
        textSegmentThre.text = "✔️ Консультирование"
    }


    //MARK: - Method
    
    @objc func switchShow(send: UISwitch) {
        
        if send.isOn {
            buttonZakaz.isHidden = false
        } else {
            buttonZakaz.isHidden = true
        }
            
        }
     
    @objc func alertButton(sender: UIButton) {
        
        let alertControl = UIAlertController(title: "Помощь юриста", message: "Cделать заказ",  preferredStyle: .alert)
       
        let alert = UIAlertAction(title: "Вернуться", style: .cancel)
        
        let alertTw = UIAlertAction(title: "Продолжить", style: .default) { (aletrTw) in
            
            if self.labele.isHidden == true {
                self.labele.isHidden = false
            }
            
        }
                          
            alertControl.addAction(alert)
            alertControl.addAction(alertTw)
            self.present(alertControl, animated: true, completion: nil)
        }
      
    
    @objc func segmControll(sender: UISegmentedControl) {
        
        if segmentControl.selectedSegmentIndex == 0 {
           
            self.textSegment.text = "✔️ Защита в Суде"
            self.textSegmentTwo.text = "✔️ Бумажная работа"
            self.textSegmentThre.text = "✔️ Консультирование"
            
        } else if segmentControl.selectedSegmentIndex == 1 {

            self.textSegment.text = "✔️ Опции Про пакета"
            self.textSegmentTwo.text = "✔️ Наведение суеты"
            self.textSegmentThre.text = "✔️ Выезд на стрелки вместо Вас"
        }
        
        
    }
    
}

