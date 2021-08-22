//
//  ViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let textFieldOne = UITextField()
    let textFieldTwo = UITextField()
    let songID = String()
    
    let plistLabel = UILabel()
    
    let labelTimeSongOne = UILabel()
    let labelTimeSongTwo = UILabel()
    
    let buttonSender = UIButton()
    let buttonTwo = UIButton()
    
    let imageViewOne = UIImageView()
    let imageViewTwo = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        // 8. Перебрасывать название песни с первого экрана на второй
//        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//                    if segue.identifier == "Bouche - Bemy_lover" {
//                    guard let destination = segue.destination as? TwoViewController else {return}
//                    destination.songID = "Bouche - Bemy_lover"
//                        destination.songMaxDurration = 60.0
//                    }
//                    if segue.identifier == "MrPresident - Coco_Jambo" {
//                        guard let destination = segue.destination as? TwoViewController else {return}
//                        destination.songID = "MrPresident - Coco_Jambo"
//                        destination.songMaxDurration = 63.0
//                    }
//                }
        
        

        //create buttonSender
        buttonSender.frame = CGRect(x: 80, y: 160, width: 180, height: 50)
        buttonSender.setTitle("Bouche - Bemy_lover", for: .normal)
        buttonSender.setTitle("Bouche - Bemy_lover", for: .highlighted)
        buttonSender.setTitleColor(UIColor.systemBlue, for: .normal)
        buttonSender.setTitleColor(UIColor.systemGray2, for: .highlighted)
        buttonSender.addTarget(self, action: #selector(tappetVC), for: .touchUpInside)
        view.addSubview(buttonSender)
        
        
        //create buttonTwo
        buttonTwo.frame = CGRect(x: 80, y: 240, width: 240, height: 50)
        buttonTwo.setTitle("MrPresident - Coco_Jambo", for: .normal)
        buttonTwo.setTitle("MrPresident - Coco_Jambo", for: .highlighted)
        buttonTwo.setTitleColor(UIColor.systemBlue, for: .normal)
        buttonTwo.setTitleColor(UIColor.systemGray2, for: .highlighted)
        buttonTwo.addTarget(self, action: #selector(tappetVC), for: .touchUpInside)
        view.addSubview(buttonTwo)
        
        //create imageViewOne
        imageViewOne.frame = CGRect(x: 20, y: 160, width: 55, height: 50)
        imageViewOne.image = UIImage(named: "png-transparent-computer-icons-itunes-app-store-itunes-icon-symbol-miscellaneous-electric-blue-music-download.png 23-38-22-861")
        view.addSubview(imageViewOne)
         
        //create imageViewTwo
        imageViewTwo.frame = CGRect(x: 20, y: 240, width: 55, height: 50)
        imageViewTwo.image = UIImage(named: "png-transparent-computer-icons-itunes-app-store-itunes-icon-symbol-miscellaneous-electric-blue-music-download.png 23-38-22-861")
        view.addSubview(imageViewTwo)
        
        
        //create labelTimeSongOne
        labelTimeSongOne.frame = CGRect(x: 340, y: 160, width: 45, height: 45)
        labelTimeSongOne.text = "4:01"
        labelTimeSongOne.textColor = UIColor.systemGray2
        view.addSubview(labelTimeSongOne)
    
       //create labelTimeSongTwo
        labelTimeSongTwo.frame = CGRect(x: 340, y: 240, width: 45, height: 45)
        labelTimeSongTwo.text = "3:39"
        labelTimeSongTwo.textColor = UIColor.systemGray2
        view.addSubview(labelTimeSongTwo)
    
       //create plistLabel
        plistLabel.frame = CGRect(x: 140, y: 60, width: 100, height: 60)
        plistLabel.text = "Plist"
        plistLabel.textAlignment = .center
        plistLabel.font = UIFont.systemFont(ofSize: 25)
        plistLabel.textColor = UIColor.systemBlue
        plistLabel.layer.borderWidth = 2
        plistLabel.layer.borderColor = UIColor.systemBlue.cgColor
        plistLabel.layer.cornerRadius = 10
        view.addSubview(plistLabel)
         
        //create textFieldOne
        textFieldOne.frame = CGRect(x: 20, y: 220, width: 200, height: 1)
        textFieldOne.line()
        view.addSubview(textFieldOne)
        
        //create textFieldTwo
        textFieldTwo.frame = CGRect(x: 20 , y: 300, width: 200, height: 1)
        textFieldTwo.line()
        view.addSubview(textFieldTwo)
   
    
    
    
    }

    //MARK: Method tappetVC
    @objc func tappetVC(sender: UIButton) {
        let twoViewController = TwoViewController()
        self.present(twoViewController, animated: true)
    }



}
//create extension UITexfield
extension UITextField {
    func line() {
        let myLine = CALayer()
        myLine.frame = CGRect(x: 0, y: frame.height - 2, width: 346, height: 2)
        myLine.backgroundColor = UIColor.systemGray6.cgColor
        self.layer.addSublayer(myLine)
    }
}

