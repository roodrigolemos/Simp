//
//  NewExpanseVC.swift
//  Simp
//
//  Created by Rodrigo Lemos on 13/07/20.
//  Copyright © 2020 Rodrigo Lemos. All rights reserved.
//

import UIKit

class NewExpanseVC: UIViewController {
    
    // MARK: IBOUTLET
    @IBOutlet weak var amountTextField: ExpanseTextField!
    @IBOutlet weak var dateTextField: ExpanseTextField!
    @IBOutlet weak var saveExpanse: UIButton!
    @IBOutlet weak var fixedTransaction: typeTransactionTextField!
    @IBOutlet weak var installmentTransaction: typeTransactionTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        configureTextField()
        configureButtons()
        createDatePicker()
        createInstallmentPicker()
        addTargets()
        
        fixedTransaction.delegate = self
    }
    
    // MARK: IBACTION
    @IBAction func resetTransactions(_ sender: Any) {
        fixedTransaction.text = "Fixed"
        installmentTransaction.text = "Installment"
        
        fixedTransaction.backgroundColor = .white
        installmentTransaction.backgroundColor = .white
        
        fixedTransaction.textColor = .darkGray
        installmentTransaction.textColor = .darkGray
        
        selectedMonth = nil
        installmentPicker.selectRow(0, inComponent: 0, animated: true)
    }
    
    // MARK: My Methods
    let datePicker = UIDatePicker()
    
    func createDatePicker() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneDatePressed))
        doneBtn.tintColor = UIColor(red: 38/255, green: 11/255, blue: 95/255, alpha: 1)
        toolBar.setItems([doneBtn], animated: true)
        
        dateTextField.inputAccessoryView = toolBar
        dateTextField.inputView = datePicker
        
        datePicker.datePickerMode = .date
    }
    
    let months = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
    var selectedMonth: String?
    let installmentPicker = UIPickerView()
    
    func createInstallmentPicker() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneInstallmentPressed))
        doneButton.tintColor = UIColor(red: 38/255, green: 11/255, blue: 95/255, alpha: 1)
        toolBar.setItems([doneButton], animated: true)

        installmentPicker.delegate = self
        
        installmentTransaction.inputAccessoryView = toolBar
        installmentTransaction.inputView = installmentPicker
    }
    
    // MARK: TARGETs
    func addTargets() {
        fixedTransaction.addTarget(self, action: #selector(fixedTapped), for: .touchDown)
    }
    
    // MARK: OBJCs
    @objc func doneDatePressed() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        dateTextField.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func doneInstallmentPressed() {
        if selectedMonth == nil {
            selectedMonth = "1"
        }
        installmentTransaction.text = selectedMonth
        installmentTransaction.backgroundColor = UIColor(red: 38/255, green: 11/255, blue: 95/255, alpha: 1)
        installmentTransaction.textColor = .white
        
        fixedTransaction.backgroundColor = .white
        fixedTransaction.textColor = .darkGray
        fixedTransaction.text = "Fixed"
        view.endEditing(true)
    }
    
    @objc func fixedTapped() {
        fixedTransaction.backgroundColor = UIColor(red: 38/255, green: 11/255, blue: 95/255, alpha: 1)
        fixedTransaction.textColor = .white
            
        installmentTransaction.backgroundColor = .white
        installmentTransaction.textColor = .darkGray
        installmentTransaction.text = "Installment"
        isEditing = false
    }
    
    // MARK: Configure Methods
    func configureButtons() {
        saveExpanse.layer.cornerRadius = 15
    }
       
    func configureTextField() {
        amountTextField.configure()
        dateTextField.configure()
        fixedTransaction.configure(bacgkroundColor: .white, titleColor: .darkGray, borderWidth: 1, borderColor: UIColor.darkGray.cgColor, title: "Fixed")
        installmentTransaction.configure(bacgkroundColor: .white, titleColor: .darkGray, borderWidth: 1, borderColor: UIColor.darkGray.cgColor, title: "Installment")
    }
}

// MARK: EXTENSIONS
extension NewExpanseVC: UIPickerViewDelegate, UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return months.count
    }
        
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return months[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedMonth = months[row]
    }
}

extension NewExpanseVC: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField.text == "Fixed" {
            return false
        }
        return true
    }
}
