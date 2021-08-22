//
//  ViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {

    let categoryArray = ["Monitors", "Keyboards", "Mouses"]
    
        
    var segmentContrl = UISegmentedControl()
    
   private var label: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.systemBlue
        label.layer.borderWidth = 4
        label.layer.borderColor = UIColor.systemRed.cgColor
        label.layer.cornerRadius = 10
        label.textAlignment = .center
        label.frame = CGRect(x: 120, y: 65, width: 160, height: 60)
        label.text = "DNS Market"
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
   
   private var labelMarket: UILabel = {
        let labelMark = UILabel()
        labelMark.frame = CGRect(x: 70, y: 720, width: 250, height: 100)
        labelMark.textAlignment = .center
        labelMark.text = "Мониторы со скидкой 20 %"
        labelMark.textColor = UIColor.systemRed
        labelMark.font = UIFont.systemFont(ofSize: 18)
        return labelMark
    }()
    
    private let firstProductCell = ViewController.returnCellView()
    private let secondProductCell = ViewController.returnCellView()
    private let thirdProductCell = ViewController.returnCellView()
    private let fourthProductCell = ViewController.returnCellView()
    
    
    
   //create imageProduct
    let imageViewOne = UIImageView()
    let imageViewTwo = UIImageView()
    let imageViewThre = UIImageView()
    let ImageViewFour = UIImageView()

    //create buttonOneProduct
   private let buttonOnePriduct: UIButton = {
        let button = UIButton()
    button.frame = CGRect(x: 40, y: 390, width: 120, height: 40)
    button.setTitle("Заказать", for: .normal)
    button.setTitle("Заказать", for: .highlighted)
    button.setTitleColor(UIColor.systemBlue, for: .normal)
    button.setTitleColor(UIColor.systemGray, for: .highlighted)
    button.backgroundColor = UIColor.systemGreen
    button.layer.cornerRadius = 5
 //   button.addTarget(self, action: #selector(twoViewContr), for: .touchUpInside)
        return button
   }()
    //create buttonTwoProduct
    private let buttonTwoPriduct: UIButton = {
        let buttonTwo = UIButton()
    buttonTwo.frame = CGRect(x: 230, y: 390, width: 120, height: 40)
    buttonTwo.setTitle("Заказать", for: .normal)
    buttonTwo.setTitle("Заказать", for: .highlighted)
    buttonTwo.setTitleColor(UIColor.systemBlue, for: .normal)
    buttonTwo.setTitleColor(UIColor.systemGray, for: .highlighted)
    buttonTwo.backgroundColor = UIColor.systemGreen
    buttonTwo.layer.cornerRadius = 5
  //  buttonTwo.addTarget(self, action: #selector(twoViewContr), for: .touchUpInside)
        return buttonTwo
   }()
   
    //create buttonThreProduct
    private let buttonThrePriduct: UIButton = {
        let buttonThre = UIButton()
    buttonThre.frame = CGRect(x: 40, y: 650, width: 120, height: 40)
    buttonThre.setTitle("Заказать", for: .normal)
    buttonThre.setTitle("Заказать", for: .highlighted)
    buttonThre.setTitleColor(UIColor.systemBlue, for: .normal)
    buttonThre.setTitleColor(UIColor.systemGray, for: .highlighted)
    buttonThre.backgroundColor = UIColor.systemGreen
    buttonThre.layer.cornerRadius = 5
  //  buttonThre.addTarget(self, action: #selector(twoViewContr), for: .touchUpInside)
        return buttonThre
   }()
    
    //create buttonFourProduct
    private let buttonFourPriduct: UIButton = {
        let buttonFour = UIButton()
    buttonFour.frame = CGRect(x: 230, y: 650, width: 120, height: 40)
    buttonFour.setTitle("Заказать", for: .normal)
    buttonFour.setTitle("Заказать", for: .highlighted)
    buttonFour.setTitleColor(UIColor.systemBlue, for: .normal)
    buttonFour.setTitleColor(UIColor.systemGray, for: .highlighted)
    buttonFour.backgroundColor = UIColor.systemGreen
    buttonFour.layer.cornerRadius = 5
      //  buttonFour.addTarget(self, action: #selector(twoViewContr), for: .touchUpInside)
        return buttonFour
   }()
    
    
    
    
    private var labelProductOne = ViewController.descriptionLabel(sender: "Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse")
    private var lableProductTwo = ViewController.descriptionLabel(sender: "Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse")
    private var lableProductThre = ViewController.descriptionLabel(sender: "Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse")
    private var lableProductFour = ViewController.descriptionLabel(sender: "Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse")
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        setupView()
    
    }
    
    
    //MARK: Method setupView
    @objc func setupView() {
        view.addSubview(segmentContrl)
        view.addSubview(label)
        view.addSubview(labelMarket)
        view.addSubview(buttonOnePriduct)
        view.addSubview(buttonTwoPriduct)
        view.addSubview(buttonThrePriduct)
        view.addSubview(buttonFourPriduct)
        self.view.addSubview(firstProductCell)
        self.view.addSubview(secondProductCell)
        self.view.addSubview(thirdProductCell)
        self.view.addSubview(fourthProductCell)
        
        
        labelProductOne.text = "Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse"
        lableProductTwo.text = "Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it"
        lableProductThre.text = "Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it"
        lableProductFour.text = "Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it"
        
        imageViewOne.image = UIImage(named: "acer-xb321hkbmiphz-1-small.jpg")
        imageViewTwo.image = UIImage(named: "333468_f01_b.jpg")
        imageViewThre.image = UIImage(named: "s-l1600.jpg")
        ImageViewFour.image = UIImage(named: "78_ftqr-4o.jpg")

        
        
        segmentContrl = UISegmentedControl(items: categoryArray)
        segmentContrl.frame = CGRect(x: 20, y: 140, width: 350, height: 40)
        segmentContrl.selectedSegmentIndex = 0
        segmentContrl.addTarget(self, action: #selector(shopSegment(sender:)), for:  .valueChanged)
        segmentContrl.tintColor = UIColor.systemBlue
        view.addSubview(segmentContrl)
        
        self.imageViewOne.frame = CGRect(x: 30, y: 250, width: 120, height: 90)
            view.addSubview(imageViewOne)
         
        self.imageViewTwo.frame = CGRect(x: 220, y: 250, width: 120, height: 90)
        view.addSubview(imageViewTwo)
        
        self.imageViewThre.frame = CGRect(x: 37, y: 520, width: 120, height: 70)
        view.addSubview(imageViewThre)
        
        self.ImageViewFour.frame = CGRect(x: 220, y: 500, width: 140, height: 100)
        view.addSubview(ImageViewFour)
        
        self.labelProductOne.frame = CGRect(x: 40, y: 330, width: 120, height: 80)
        labelProductOne.textColor = UIColor.systemGray
        labelProductOne.numberOfLines = 2
        labelProductOne.font = UIFont.systemFont(ofSize: 10)
        view.addSubview(labelProductOne)
        

        self.lableProductTwo.frame = CGRect(x: 230, y: 330, width: 120, height: 80)
        lableProductTwo.textColor = UIColor.systemGray
        lableProductTwo.numberOfLines = 2
        lableProductTwo.font = UIFont.systemFont(ofSize: 10)
        view.addSubview(lableProductTwo)
        
        self.lableProductThre.frame = CGRect(x: 40, y: 590, width: 120, height: 80)
        lableProductThre.textColor = UIColor.systemGray
        lableProductThre.numberOfLines = 2
        lableProductThre.font = UIFont.systemFont(ofSize: 10)
        view.addSubview(lableProductThre)
        
        self.lableProductFour.frame = CGRect(x: 230, y: 590, width: 120, height: 80)
        lableProductFour.textColor = UIColor.systemGray
        lableProductFour.numberOfLines = 2
        lableProductFour.font = UIFont.systemFont(ofSize: 10)
        view.addSubview(lableProductFour)
        
        imageViewOne.contentMode = .scaleAspectFill
        imageViewTwo.contentMode = .scaleAspectFill
        imageViewThre.contentMode = .scaleAspectFill
        ImageViewFour.contentMode = .scaleAspectFill
    }
    
    //MARK: Method Switch Segment of index
    @objc func shopSegment(sender: UISegmentedControl) {
        
        guard sender == segmentContrl else { return }
            print(sender)
        let segmentInd = sender.selectedSegmentIndex
        print(segmentInd)
        
        
        switch segmentInd {
        case 0:
            labelMarket.text = "Мониторы со скидкой 20 %"
            labelMarket.textColor = .red
            imageViewOne.image = UIImage(named: "acer-xb321hkbmiphz-1-small.jpg")
            imageViewTwo.image = UIImage(named: "333468_f01_b.jpg")
            imageViewThre.image = UIImage(named: "s-l1600.jpg")
            ImageViewFour.image = UIImage(named: "78_ftqr-4o.jpg")
            labelProductOne.text = "Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse"
            lableProductTwo.text = "Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it"
            lableProductThre.text = "Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it"
            lableProductFour.text = "Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it"
        case 1:
            labelMarket.text = "Клавиатуры со скидкой 15 %"
            labelMarket.textColor = .red
            imageViewOne.image = UIImage(named: "keyboard_PNG101839.png")
            imageViewTwo.image = UIImage(named: "keyboard_PNG101842.png")
            imageViewThre.image = UIImage(named: "keyboard_PNG101845.png")
            ImageViewFour.image = UIImage(named: "keyboard_PNG5857.png")
            labelProductOne.text = "Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse"
            lableProductTwo.text = "Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it"
            lableProductThre.text = "Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it"
            lableProductFour.text = "Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it"
        case 2:
            labelMarket.text = "Мышки скидка 5 %"
            labelMarket.textColor = .red
            imageViewOne.image = UIImage(named: "computer_mouse_PNG7663")
            imageViewTwo.image = UIImage(named: "computer_mouse_PNG7686")
            imageViewThre.image = UIImage(named: "computer_mouse_PNG7685")
            ImageViewFour.image = UIImage(named: "computer_mouse_PNG7670")
            labelProductOne.text = "Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse, Some first mouse"
            lableProductTwo.text = "Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it"
            lableProductThre.text = "Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it"
            lableProductFour.text = "Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it, Some second mouse, stop it"
        default:
            break
        }
    }
   
    
//    @objc private func twoViewContr(_ sender: UIButton) {
//        let twoController = TwoViewController()
//
//        switch sender {
//        case buttonOnePriduct:
//            twoController.imageOfproduct = imageViewOne.image
//            twoController.descriptionText = labelProductOne.text
//        case buttonTwoPriduct:
//            twoController.imageOfproduct = imageViewTwo.image
//            twoController.descriptionText = lableProductTwo.text
//        case buttonThrePriduct:
//            twoController.imageOfproduct = imageViewThre.image
//            twoController.descriptionText = lableProductThre.text
//        case buttonFourPriduct:
//            twoController.imageOfproduct = ImageViewFour.image
//            twoController.descriptionText = lableProductFour.text
//        default :
//            break
//        }
//
//        self.navigationController?.pushViewController(twoController, animated: true)
//        present(twoController, animated: true, completion: nil)
//    }
    
    
    
    static func callReturn() -> UIView {
        let view = UIView()
        view.backgroundColor = .black
        view.frame = CGRect(x: 40, y: 120, width: 200, height: 200)
        view.layer.cornerRadius = 10
        return view
    }

   
    static func descriptionLabel(sender: String) -> UILabel {
        let labled = UILabel()
        labled.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        labled.tintColor = UIColor.systemRed
       return labled
    
}
 
    static func returnCellView() -> UIView {
        let cellView = UIView()
        cellView.backgroundColor = .white
        cellView.layer.cornerRadius = 10
        return cellView
    }
    
}
