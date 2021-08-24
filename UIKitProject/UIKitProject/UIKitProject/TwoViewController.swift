//
//  TwoViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 23.08.2021.
//

import UIKit

class TwoViewController: UIViewController {

    
    var imagesUgolovn: UIImageView = {
        let imageProfeshional = UIImageView()
        imageProfeshional.frame = CGRect(x: 10, y: 100, width: 100, height: 90)
        imageProfeshional.layer.cornerRadius = 10
        return imageProfeshional
    }()
    
    var imageGrajd: UIImageView = {
        let grajdansk = UIImageView()
        grajdansk.frame = CGRect(x: 10, y: 216, width: 100, height: 100)
        grajdansk.layer.cornerRadius = 10
        return grajdansk
    }()
    
    var imageZemelnaya: UIImageView = {
        let zemelnaya = UIImageView()
        zemelnaya.frame = CGRect(x: 10, y: 340, width: 100, height: 90)
        zemelnaya.layer.cornerRadius = 10
        return zemelnaya
    }()
    
    var imageHozyaisttvenay: UIImageView = {
        let hozyaistdennaya = UIImageView()
        hozyaistdennaya.frame = CGRect(x: 10, y: 450, width: 100, height: 90)
        hozyaistdennaya.layer.cornerRadius = 10
        return hozyaistdennaya
    }()
    
    let lableProfeshional: UILabel = {
        let profeshionalOne = UILabel()
        profeshionalOne.frame = CGRect(x: 130, y: 92, width: 180, height: 100)
        profeshionalOne.textColor = UIColor.black
        profeshionalOne.font = UIFont.systemFont(ofSize: 12)
        profeshionalOne.numberOfLines = 5
        return profeshionalOne
    }()
    
    let lableProfeshionalTwo: UILabel = {
        let profeshionalTwo = UILabel()
        profeshionalTwo.frame = CGRect(x: 130, y: 205, width: 180, height: 100)
        profeshionalTwo.textColor = UIColor.black
        profeshionalTwo.font = UIFont.systemFont(ofSize: 12)
        profeshionalTwo.numberOfLines = 0
        return profeshionalTwo
    }()
    
    
    let lableProfeshionalThre: UILabel = {
        let profeshionalThre = UILabel()
        profeshionalThre.frame = CGRect(x: 130, y: 335, width: 180, height: 100)
        profeshionalThre.textColor = UIColor.black
        profeshionalThre.font = UIFont.systemFont(ofSize: 12)
        profeshionalThre.numberOfLines = 0
        return profeshionalThre
    }()
    
    let lableProfeshionalFour: UILabel = {
        let profeshionalFour = UILabel()
        profeshionalFour.frame = CGRect(x: 130, y: 445, width: 180, height: 100)
        profeshionalFour.textColor = UIColor.black
        profeshionalFour.font = UIFont.systemFont(ofSize: 12)
        profeshionalFour.numberOfLines = 0
        return profeshionalFour
    }()
    
    
    var imageOne: UIImage?
    var imagetwo: UIImage?
    var imageThre: UIImage?
    var imageFour: UIImage?
    
    var lableOne: String?
    var lableTwo: String?
    var lableThre: String?
    var lableFour: String?
    
    
    let buttonTapp: UIButton = {
        let buttTapp = UIButton()
        buttTapp.frame = CGRect(x: 290, y: 150, width: 70, height: 40)
        buttTapp.setTitle("✔️", for: .normal)
        buttTapp.setTitle("✔️", for: .highlighted)
        buttTapp.setTitleColor(UIColor.systemGreen, for: .highlighted)
        buttTapp.setTitleColor(UIColor.white, for: .normal)
        buttTapp.backgroundColor = UIColor(red: 106/255, green: 246/255, blue: 59/255, alpha: 100/255)
        buttTapp.layer.cornerRadius = 10
        buttTapp.addTarget(self, action: #selector(addVC), for: .touchUpInside)
        return buttTapp
    }()
    
    let buttonTappTwo: UIButton = {
        let buttTappTwo = UIButton()
        buttTappTwo.frame = CGRect(x: 290, y: 270, width: 70, height: 40)
        buttTappTwo.setTitle("✔️", for: .normal)
        buttTappTwo.setTitle("✔️", for: .highlighted)
        buttTappTwo.setTitleColor(UIColor.systemGray, for: .highlighted)
        buttTappTwo.backgroundColor = UIColor(red: 106/255, green: 246/255, blue: 59/255, alpha: 100/255)
        buttTappTwo.layer.cornerRadius = 10
        buttTappTwo.addTarget(self, action: #selector(addVC), for: .touchUpInside)
        return buttTappTwo
    }()
    
    let buttonTappThre: UIButton = {
        let buttTappThre = UIButton()
        buttTappThre.frame = CGRect(x: 290, y: 380, width: 70, height: 40)
        buttTappThre.setTitle("✔️", for: .normal)
        buttTappThre.setTitle("✔️", for: .highlighted)
        buttTappThre.setTitleColor(UIColor.systemGray, for: .highlighted)
        buttTappThre.backgroundColor = UIColor(red: 106/255, green: 246/255, blue: 59/255, alpha: 100/255)
        buttTappThre.layer.cornerRadius = 10
        buttTappThre.addTarget(self, action: #selector(addVC), for: .touchUpInside)
        return buttTappThre
    }()
    
    let buttonTappFour: UIButton = {
        let buttTappFour = UIButton()
        buttTappFour.frame = CGRect(x: 290, y: 495, width: 70, height: 40)
        buttTappFour.setTitle("✔️", for: .normal)
        buttTappFour.setTitle("✔️", for: .highlighted)
        buttTappFour.setTitleColor(UIColor.systemGray, for: .highlighted)
        buttTappFour.backgroundColor = UIColor(red: 106/255, green: 246/255, blue: 59/255, alpha: 100/255)
        buttTappFour.layer.cornerRadius = 10
        buttTappFour.addTarget(self, action: #selector(addVC), for: .touchUpInside)
        return buttTappFour
    }()
    
    
    
    let textFieldOne = UITextField()
    let textFieldTwo = UITextField()
    let textFieldThre = UITextField()
    let textFieldFour = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        save()
        
        
        view.backgroundColor = .white
          title = "Юристы"
    }
    
    func save() {
        imagesUgolovn.image = imagetwo
        imagesUgolovn.clipsToBounds = true
        view.addSubview(imagesUgolovn)
    
        imageGrajd.image = imageOne
        imageGrajd.clipsToBounds = true
        view.addSubview(imageGrajd)
    
        imageZemelnaya.image = imageThre
        imageZemelnaya.clipsToBounds = true
        view.addSubview(imageZemelnaya)
        
        imageHozyaisttvenay.image = imageFour
        imageHozyaisttvenay.clipsToBounds = true
        view.addSubview(imageHozyaisttvenay)
    
        lableProfeshional.text = lableOne
        view.addSubview(lableProfeshional)
        lableProfeshionalTwo.text = lableTwo
        view.addSubview(lableProfeshionalTwo)
        lableProfeshionalThre.text = lableThre
        view.addSubview(lableProfeshionalThre)
        lableProfeshionalFour.text = lableFour
        view.addSubview(lableProfeshionalFour)
       
        view.addSubview(buttonTapp)
        view.addSubview(buttonTappTwo)
        view.addSubview(buttonTappThre)
        view.addSubview(buttonTappFour)
        
        textFieldOne.line()
        textFieldOne.frame = CGRect(x: 15, y: 204, width: 0, height: 0)
        view.addSubview(textFieldOne)
        
        textFieldTwo.line()
        textFieldTwo.frame = CGRect(x: 15, y: 327, width: 0, height: 0)
        view.addSubview(textFieldTwo)
    
        textFieldThre.line()
        textFieldThre.frame = CGRect(x: 15, y: 438, width: 0, height: 0)
        view.addSubview(textFieldThre)
    
        textFieldFour.line()
        textFieldFour.frame = CGRect(x: 15, y: 552, width: 0, height: 0)
        view.addSubview(textFieldFour)
    
    }
    

      @objc func addVC(sender: UIButton) {
      
        let threVC = ThreViewController()
        
        switch sender {
        case buttonTapp:
            threVC.imagesO = imagesUgolovn.image
            threVC.labelO = lableProfeshional.text
        case buttonTappTwo:
            threVC.imagesT = imageGrajd.image
            threVC.labelT = lableProfeshionalTwo.text
        case buttonTappThre:
            threVC.imagesTh = imageZemelnaya.image
            threVC.labelTh = lableProfeshionalThre.text
        case buttonTappFour:
            threVC.imagesF = imageHozyaisttvenay.image
            threVC.labelF = lableProfeshionalFour.text
        default:
            break
        }
            
        
        navigationController?.pushViewController(threVC, animated: true)
    }
}

extension UITextField {
    
    func line() {
        let myLine = CALayer()
        myLine.frame = CGRect(x: 0, y: frame.height - 1, width: 340, height: 2)
        myLine.backgroundColor = UIColor.systemTeal.cgColor
        layer.addSublayer(myLine)
    }
}
