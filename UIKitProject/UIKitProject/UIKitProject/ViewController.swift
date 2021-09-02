//
//  ViewController.swift
//  UIKitProject
//
//  Created by Arthur111  on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {
  
    let labelText: UILabel = {
        let labT = UILabel()
        labT.text = "Работай головой,Работай головой, Работай головой, Работай головой,Работай головой"
        labT.textColor = UIColor.systemRed
        labT.layer.shadowRadius = 20
        labT.layer.shadowOffset = CGSize(width: 0.0, height: 20)
        labT.layer.shadowColor = UIColor.systemGray.cgColor
        labT.layer.shadowOpacity = 0.3
        labT.frame = CGRect(x: 40, y: 100, width: 300, height: 300)
        labT.numberOfLines = 0
        labT.textAlignment = .center
        labT.backgroundColor = .systemGray6
        
        return labT
    }()
    
    let slider: UISlider = {
       let sliderr = UISlider()
        sliderr.frame = CGRect(x: 80, y: 620, width: 250, height: 30)
        sliderr.addTarget(self, action: #selector(save), for: .valueChanged)
       return sliderr
    }()
    
    
    
    let pickerText: UIPickerView = {
        let pick = UIPickerView()
        pick.frame = CGRect(x: 70, y: 500, width: 250, height: 40)
        return pick
    }()
    
    
    
    let pickerNumber: UIPickerView = {
        let pickNumb = UIPickerView()
        pickNumb.frame = CGRect(x: 70, y: 550, width: 250, height: 40)
        return pickNumb
    }()
        
    let textColorrr = ["green", "red", "blue", "gray", "yellow"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Hello"
   
        pickerText.delegate = self
        pickerText.dataSource = self
       
        pickerNumber.dataSource = self
        pickerNumber.delegate = self
        
        
        view.addSubview(labelText)
        view.addSubview(slider)
  
        view.addSubview(pickerText)
        view.addSubview(pickerNumber)
 
    
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(alert(send:)))
   
    }
    
   

   @objc func save(sender: UISlider) {
        if sender == slider {
            sender.minimumValue = 5
            sender.maximumValue = 40
            labelText.font = .systemFont(ofSize: CGFloat(sender.value))
        }
        
    }
    
    @objc func alert(send: UIButton) {
      let allertController = UIAlertController(title: "Работайте головой!", message: "введите текст", preferredStyle: .alert)
        let act = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let action = UIAlertAction(title: "Add", style: .default) { (action) in
            self.labelText.text = allertController.textFields?.first?.text
      }
        
        allertController.addTextField { field in
            field.placeholder  = "Add text"
        }
        
        
        allertController.addAction(act)
        allertController.addAction(action)
        present(allertController, animated: true, completion: nil)
     }
}


extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        switch pickerView {
        case pickerText:
            return textColorrr.count
        case pickerNumber:
            return 10
        default:
            break
        }
       return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView {
        case pickerText:
            return "\(textColorrr[row])"
        case pickerNumber:
            return "\(row) line"
        default:
            break
        }
   
        return ""
    }
   
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView {
        case pickerText:
            switch row {
            case 0:
                labelText.textColor = .green
            case 1:
                labelText.textColor = .red
            case 2:
                labelText.textColor = .blue
            case 3:
                labelText.textColor = .gray
            case 4:
                labelText.textColor = .yellow
            default:
                break
            }
        case pickerNumber:
            labelText.numberOfLines = row
            
        default:
            break
        }
    }
    
 
}
 
 
