//
//  TwoViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 22.08.2021.
//

import UIKit

// MARK: - 3. По нажатию на кнопку + попадаем на третий экран. Дата, возраст, пол - пикеры. Instagram - алертКонтроллер.

class TwoViewController: UIViewController {

   weak var delegate: SecondViewControllerDelegate?

    let nameLable = UILabel()
    let dateLable = UILabel()
    let ageLable = UILabel()
    let sexLable = UILabel()
    let instagramLable = UILabel()

    let nameTextField = UITextField()
    let dateTextField = UITextField()
    let ageTextField = UITextField()
    let sexTextField = UITextField()
    let instagramTextField = UITextField()

    let cancelButton = UIButton()
    let addButton = UIButton()
    let changeFoto = UIButton()

    let datePicker = UIDatePicker()
    let agePicker = UIPickerView()
    let sexPicker = UIPickerView()
    let genders = ["man", "woman"]
    let alert = UIAlertController()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .white
        
        // create cancelButton
        cancelButton.frame = CGRect(x: 10, y: 10, width: 70, height: 30)
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.setTitleColor(.systemBlue, for: .normal)
        cancelButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        cancelButton.addTarget(self, action: #selector(gotosecVC), for: .touchUpInside)
        view.addSubview(cancelButton)

        // create addButton
        addButton.frame = CGRect(x: 340, y: 10, width: 70, height: 30)
        addButton.setTitle("Add", for: .normal)
        addButton.setTitleColor(.systemBlue, for: .normal)
        addButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        addButton.addTarget(self, action: #selector(saveData), for: .touchUpInside)
        view.addSubview(addButton)

        // create profil foto
        let foto = UIImageView(frame: CGRect(x: 115, y: 110, width: 180, height: 180))
        foto.image = UIImage(systemName: "person.circle.fill")
        foto.tintColor = .systemGray
        self.view.addSubview(foto)

        // create changeFoto button
        changeFoto.frame = CGRect(x: 150, y: 300, width: 100, height: 30)
        changeFoto.setTitle("Change foto", for: .normal)
        changeFoto.setTitleColor(.systemBlue, for: .normal)
        changeFoto.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        view.addSubview(changeFoto)

        //  create nameLable
        nameLable.frame = CGRect(x: 55, y: 340, width: 100, height: 50)
        nameLable.text = "Name"
        nameLable.font = UIFont.boldSystemFont(ofSize: 15)
        nameLable.textColor = .systemBlue
        view.addSubview(nameLable)

        // create nameTaxtField
        nameTextField.frame = CGRect(x: 55, y: 370, width: 300, height: 50)
        nameTextField.placeholder = "your name"
        view.addSubview(nameTextField)

        // create dateLable
        dateLable.frame = CGRect(x: 55, y: 420, width: 100, height: 50)
        dateLable.text = "Date"
        dateLable.font = UIFont.boldSystemFont(ofSize: 15)
        dateLable.textColor = .systemBlue
        view.addSubview(dateLable)

        // create dateTextField
        dateTextField.frame = CGRect(x: 55, y: 450, width: 300, height: 50)
        dateTextField.placeholder = "input date"
        view.addSubview(dateTextField)

        // create ageLable
        ageLable.frame = CGRect(x: 55, y: 500, width: 100, height: 50)
        ageLable.text = "Age"
        ageLable.font = UIFont.boldSystemFont(ofSize: 15)
        ageLable.textColor = .systemBlue
        view.addSubview(ageLable)

        // create ageTextField
        ageTextField.frame = CGRect(x: 55, y: 530, width: 300, height: 50)
        ageTextField.placeholder = "input age"
        view.addSubview(ageTextField)

        // create sexLable
        sexLable.frame = CGRect(x: 55, y: 580, width: 100, height: 50)
        sexLable.text = "Sex"
        sexLable.font = UIFont.boldSystemFont(ofSize: 15)
        sexLable.textColor = .systemBlue
        view.addSubview(sexLable)

        // create sexTextField
        sexTextField.frame = CGRect(x: 55, y: 610, width: 300, height: 50)
        sexTextField.placeholder = "input sex"
        view.addSubview(sexTextField)

        // create instagramLable
        instagramLable.frame = CGRect(x: 55, y: 660, width: 100, height: 50)
        instagramLable.text = "Instagram"
        instagramLable.font = UIFont.boldSystemFont(ofSize: 15)
        instagramLable.textColor = .systemBlue
        view.addSubview(instagramLable)

        // create instagramTextField
        instagramTextField.frame = CGRect(x: 55, y: 690, width: 300, height: 50)
        instagramTextField.placeholder = "input instagram account"
        instagramTextField.addTarget(self, action: #selector(addIstagramAlert), for: .editingDidBegin)
        view.addSubview(instagramTextField)

        nameTextField.line()
        dateTextField.line()
        ageTextField.line()
        sexTextField.line()
        instagramTextField.line()

        // datePicker mode
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .date

        creationDatePicker()

        // agePicker
        ageTextField.inputView = agePicker
        agePicker.tag = 1

        agePicker.dataSource = self
        agePicker.delegate = self

        // sexPicker
        sexTextField.inputView = sexPicker
        sexPicker.tag = 2

        sexPicker.dataSource = self
        sexPicker.delegate = self
    }

    // MARK: - Methods

    // cancelButton dismiss to SecondViewController
    @objc func gotosecVC() {
        dismiss(animated: true, completion: nil)
    }

    // addButton save data
    @objc func saveData() {
        delegate?.update(text: nameTextField.text!, textTwo: dateTextField.text!)
        dismiss(animated: true, completion: nil)
    }

    // creation DatePicker
    func creationDatePicker() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()

        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action:  #selector(datePickerChange))
            toolbar.setItems([doneButton], animated: true)
        dateTextField.inputAccessoryView = toolbar
        dateTextField.inputView = datePicker
    }
    // datePicker change
    @objc func datePickerChange() {
     let formatter = DateFormatter()
     formatter.dateStyle = .full
     formatter.timeStyle = .none
     dateTextField.text = formatter.string(from: datePicker.date)
     self.view.endEditing(true)
     }

    // instagram alert func
    @objc func addIstagramAlert() {
        let alertController = UIAlertController(title: "Enter username", message: "", preferredStyle: .alert)

        alertController.addTextField { (textField) in
            textField.placeholder = "for example: yashalava2021"
        }
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            let text = alertController.textFields?.first
            self.instagramTextField.text! += (text?.text)!
        }
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

        alertController.addAction(actionCancel)
        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)
    }



}


// MARK: - DataSource protocol for picker
extension TwoViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // agePicker
         if pickerView.tag == 1 {
            return 100
         }
         if pickerView.tag == 2 {
            return genders.count
         }
        return 1
    }
}

// MARK: - Delegate protocol for picker
extension TwoViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // agePicker
        if pickerView.tag == 1 {
            let result = "\(row)"
            return result
        }
        // genderPicker
        if pickerView.tag == 2 {
            return genders[row]
        }
        return ""
    }

func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    // agePicker
    if pickerView.tag == 1 {
    ageTextField.text = "\(row)"
    self.view.endEditing(true)
    }
    // genderPicker
    if pickerView.tag == 2 {
        sexTextField.text = genders[row]
        self.view.endEditing(true)
    }
}
}

