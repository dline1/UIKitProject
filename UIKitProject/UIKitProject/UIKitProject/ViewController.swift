//
//  ViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {  
    
   
    let ugolovnoePravo: UIButton = {
        let ugolovnoe = UIButton()
        ugolovnoe.backgroundColor = UIColor(red: 50/255, green: 2/255, blue: 10/255, alpha: 250/255)
        ugolovnoe.frame = CGRect(x: 42, y: 230, width: 300, height: 50)
        ugolovnoe.setTitle("📌     Уголовное право", for: .normal)
        ugolovnoe.setTitle("📌     Уголовное право", for: .highlighted)
        ugolovnoe.setTitleColor(UIColor.systemGray, for: .highlighted)
        ugolovnoe.layer.cornerRadius = 10
        ugolovnoe.addTarget(self, action: #selector(navigatVCс(sender:)), for: .touchUpInside)
        return ugolovnoe
    }()
    
    let grajdanscoePravo: UIButton = {
        let grajdanskoe = UIButton()
        grajdanskoe.backgroundColor = UIColor(red: 50/255, green: 2/255, blue: 10/255, alpha: 250/255)
        grajdanskoe.frame = CGRect(x: 42, y: 310, width: 300, height: 50)
        grajdanskoe.setTitle("📌    Гражданское право", for: .normal)
        grajdanskoe.setTitle("📌    Гражданское право", for: .highlighted)
        grajdanskoe.setTitleColor(UIColor.systemGray, for: .highlighted)
        grajdanskoe.layer.cornerRadius = 10
        grajdanskoe.addTarget(self, action: #selector(navigatVCс(sender:)), for: .touchUpInside)
        return grajdanskoe
    }()
    
    
    let zemelnoePravo: UIButton = {
        let zemelnoe = UIButton()
        zemelnoe.backgroundColor = UIColor(red: 50/255, green: 2/255, blue: 10/255, alpha: 250/255)
        zemelnoe.frame = CGRect(x: 42, y: 390, width: 300, height: 50)
        zemelnoe.setTitle("📌     Земельное право", for: .normal)
        zemelnoe.setTitle("📌     Земельное право", for: .highlighted)
        zemelnoe.setTitleColor(UIColor.systemGray, for: .highlighted)
        zemelnoe.layer.cornerRadius = 10
        zemelnoe.addTarget(self, action: #selector(navigatVCс(sender:)), for: .touchUpInside)
        return zemelnoe
    }()
    
    
    let hozyaistvenoePravo: UIButton = {
        let hozyaistvenoe = UIButton()
        hozyaistvenoe.backgroundColor = UIColor(red: 50/255, green: 2/255, blue: 10/255, alpha: 250/255)
        hozyaistvenoe.frame = CGRect(x: 42, y: 470, width: 300, height: 50)
        hozyaistvenoe.setTitle("📌    Хозяйственное право", for: .normal)
        hozyaistvenoe.setTitle("📌    Хозяйственное право", for: .highlighted)
        hozyaistvenoe.setTitleColor(UIColor.systemGray, for: .highlighted)
        hozyaistvenoe.layer.cornerRadius = 10
        hozyaistvenoe.addTarget(self, action: #selector(navigatVCс(sender:)), for: .touchUpInside)
        return hozyaistvenoe
    }()
    
    
    var imageUgolovnoePravoOne = UIImageView()
    var imageUgolovnoePravoTwo = UIImageView()
    var imageUgolovnoePravoThre = UIImageView()
    var imageUgolovnoePravoFour = UIImageView()
    
    
    var imageGrajdanskoeOne = UIImageView()
    var imageGrajdanskoeTwo = UIImageView()
    var imageGrajdanskoeThre = UIImageView()
    var imageGrajdanskoeFour = UIImageView()
    
   
    var imageZemelnoeOne = UIImageView()
    var imageZemelnoeTwo = UIImageView()
    var imageZemelnoeThre = UIImageView()
    var imageZemelnoeFour = UIImageView()
    
   
    var imageHozyaistvennoeOne = UIImageView()
    var imageHozyaistvennoeTwo = UIImageView()
    var imageHozyaistvennoeThre = UIImageView()
    var imageHozyaistvennoeFour = UIImageView()
    
    var labelNameOneUgolovn = UILabel()
    var labelNameTwoUgolovn = UILabel()
    var labelNameThreUgolovn = UILabel()
    var labelNameFourUgolovn = UILabel()
    
    var labelNameOneGrajdansk = UILabel()
    var labelNameTwoGrajdansk = UILabel()
    var labelNameThreGrajdanscoe = UILabel()
    var labelNameFourGrajdanscoe = UILabel()

    var labelNameOneZemelnoe = UILabel()
    var labelNameTwoZemelnie = UILabel()
    var labelNameThreZemelnoe = UILabel()
    var labelNameFourZemelnoe = UILabel()
    
    var labelNameOneHozya = UILabel()
    var labelNameTwoHozya = UILabel()
    var labelNameThreHozya = UILabel()
    var labelNameFourHozua = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Сфера"
        
        view.addSubview(hozyaistvenoePravo)
        view.addSubview(zemelnoePravo)
        view.addSubview(grajdanscoePravo)
        view.addSubview(ugolovnoePravo)
        view.addSubview(labelNameOneUgolovn)
        
        
        
        
       saveImages()
       
        
        
        
    }

    
    //MARK: - Methods
    
    func saveImages() {
        imageUgolovnoePravoOne.image = UIImage(named: "bd49714ee11bb8ffac847f3d56ee196b.png")
        imageUgolovnoePravoTwo.image = UIImage(named: "1*YEkLxs-yZKPYKyOlQfyHwQ.jpeg")
        imageUgolovnoePravoThre.image = UIImage(named: "Lawyer-Selection.jpg")
        imageUgolovnoePravoFour.image = UIImage(named: "07319ce4ff86c02a4c4ecd89db2eda5e.jpg")
       
        
        imageGrajdanskoeOne.image = UIImage(named: "Saunin-Andrej.jpg")
        imageGrajdanskoeTwo.image = UIImage(named: "rostov-na-donu-opitniy-kreditniy-advokat.jpg")
        imageGrajdanskoeThre.image = UIImage(named: "advokak-bankrotstvu-rad.jpg")
        imageGrajdanskoeFour.image = UIImage(named: "7599824414566489_c3c3.jpg")
    
        
        imageZemelnoeOne.image = UIImage(named: "DSC_0857.jpg")
        imageZemelnoeTwo.image = UIImage(named: "XXXL.jpeg")
        imageZemelnoeThre.image = UIImage(named: "_-2.jpg")
        imageZemelnoeFour.image = UIImage(named: "20151205-154026.jpg")
        
        
        imageHozyaistvennoeOne.image = UIImage(named: "girl-sitting-at-a-de.jpg")
        imageHozyaistvennoeTwo.image = UIImage(named: "i.webp")
        imageHozyaistvennoeThre.image = UIImage(named: "advokat-po-ugolovnym-i-grazhdanskim-delam-Fm5NA5xo.jpg")
        imageHozyaistvennoeFour.image = UIImage(named: "advokati-v-habarovske.jpg")
        
        labelNameOneUgolovn.text = """
ЕКАТЕРИНА МАЛКОВА

Опыт: 5 лет
Специальзация: Уголовное Право
"""
        labelNameTwoUgolovn.text = """
МАРИНА БУКИНА

Опыт: 7 лет
Специальзация: Уголовное Право
"""
        labelNameThreUgolovn.text = """
ОЛЕГ ЛЫСИН

Опыт: 9 лет
Специальзация: Уголовное Право
"""
        labelNameFourUgolovn.text = """
ОЛЕСЯ МАЛАХОВА

Опыт: 5 лет
Специальзация: Уголовное Право
"""
        
        labelNameOneGrajdansk.text = """
AНДРЕЙ КУРОЧКИН

Опыт: 6 лет
Специальзация: Гражданское Право
"""
        labelNameTwoGrajdansk.text = """
МИХАИЛ БУГРОВ

Опыт: 8 лет
Специальзация: Гражданское Право
"""
        labelNameThreGrajdanscoe.text = """
ВЛАДИМИР РОГОЗИН

Опыт: 7 лет
Специальзация: Гражданское Право
"""
        labelNameFourGrajdanscoe.text = """
ВЛАДИСЛАВ ЯГОДИН

Опыт: 6 лет
Специальзация: Гражданское Право
"""
        
        labelNameOneZemelnoe.text = """
ПЕТР ПУШКИН

Опыт: 4 лет
Специальзация: Земельное Право
"""
        labelNameTwoZemelnie.text = """
БОРИС НЕМКОВ

Опыт: 7 лет
Специальзация: Земельное Право
"""
        labelNameThreZemelnoe.text = """
АРНОЛЬД ПЕТРОВ

Опыт: 7 лет
Специальзация: Земельное Право
"""
        labelNameFourZemelnoe.text = """
РОМАН ОБРАМОВИЧ

Опыт: 1 лет
Специальзация: Земельное Право
"""
        
        labelNameOneHozya.text = """
ЕКАТЕРИНА ОЛЕГОВНА

Опыт: 6 лет
Специальзация: Хозяйсственное Право
"""
        labelNameTwoHozya.text = """
СВЕТЛАНА НЕДОБА

Опыт: 4 лет
Специальзация: Хозяйсственное Право
"""
        labelNameThreHozya.text = """
ОЛЕГ ДУМАЕТ

Опыт: 9 лет
Специальзация: Хозяйсственное Право
"""
        labelNameFourHozua.text = """
РОМАН РОМАНОВИЧ

Опыт: 12 лет
Специальзация: Хозяйсственное Право
"""
    } 
    
    
    //MARK: - Method
    @objc func navigatVCс(sender: UIButton) {
        let twoVC = TwoViewController()
        
        switch sender {
        case ugolovnoePravo:
            twoVC.imageOne = imageUgolovnoePravoOne.image
            twoVC.imagetwo = imageUgolovnoePravoTwo.image
            twoVC.imageThre = imageUgolovnoePravoThre.image
            twoVC.imageFour = imageUgolovnoePravoFour.image
            twoVC.lableOne = labelNameOneUgolovn.text 
            twoVC.lableTwo = labelNameTwoUgolovn.text
            twoVC.lableThre = labelNameThreUgolovn.text
            twoVC.lableFour = labelNameFourUgolovn.text
            
        case grajdanscoePravo:
            twoVC.imageOne = imageGrajdanskoeOne.image
            twoVC.imagetwo = imageGrajdanskoeTwo.image
            twoVC.imageThre = imageGrajdanskoeThre.image
            twoVC.imageFour = imageZemelnoeFour.image
            twoVC.lableOne = labelNameOneGrajdansk.text
            twoVC.lableTwo = labelNameTwoGrajdansk.text
            twoVC.lableThre = labelNameThreGrajdanscoe.text
            twoVC.lableFour = labelNameFourGrajdanscoe.text
            
            
        case zemelnoePravo:
            twoVC.imageOne = imageZemelnoeOne.image
            twoVC.imagetwo = imageZemelnoeTwo.image
            twoVC.imageThre = imageZemelnoeThre.image
            twoVC.imageFour = imageZemelnoeFour.image
            twoVC.lableOne = labelNameOneZemelnoe.text
            twoVC.lableTwo = labelNameTwoZemelnie.text
            twoVC.lableThre = labelNameThreZemelnoe.text
            twoVC.lableFour = labelNameFourZemelnoe.text
            
        case hozyaistvenoePravo:
            twoVC.imageOne = imageHozyaistvennoeOne.image
            twoVC.imagetwo = imageHozyaistvennoeTwo.image
            twoVC.imageThre = imageZemelnoeThre.image
            twoVC.imageFour = imageZemelnoeFour.image
            twoVC.lableOne = labelNameOneHozya.text
            twoVC.lableTwo = labelNameTwoHozya.text
            twoVC.lableThre = labelNameThreHozya.text
            twoVC.lableFour = labelNameFourHozua.text
        default:
            break
        }
        navigationController?.pushViewController(twoVC, animated: true)
    }



}
