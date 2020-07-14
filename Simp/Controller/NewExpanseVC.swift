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
    @IBOutlet weak var fixedTransaction: typeTransactionButton!
    @IBOutlet weak var installmentTransaction: typeTransactionButton!
    
    
    @IBOutlet weak var saveExpanse: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        configureTextField()
        configureButtons()
        createDatePicker()
    }
    
    // MARK: IBACTION
    @IBAction func fixedButtonPressed(_ sender: Any) {
        fixedTransaction.backgroundColor = UIColor(red: 38/255, green: 11/255, blue: 95/255, alpha: 1)
        fixedTransaction.setTitleColor(.white, for: .normal)
        
        installmentTransaction.backgroundColor = UIColor.white
        installmentTransaction.setTitleColor(.darkGray, for: .normal)
        installmentTransaction.layer.borderColor = UIColor.darkGray.cgColor
        installmentTransaction.layer.borderWidth = 1
    }
    
    @IBAction func installmentButtonPressed(_ sender: Any) {
        installmentTransaction.backgroundColor = UIColor(red: 38/255, green: 11/255, blue: 95/255, alpha: 1)
        installmentTransaction.setTitleColor(.white, for: .normal)
        
        fixedTransaction.backgroundColor = UIColor.white
        fixedTransaction.setTitleColor(.darkGray, for: .normal)
        fixedTransaction.layer.borderColor = UIColor.darkGray.cgColor
        fixedTransaction.layer.borderWidth = 1
    }

    // MARK: My Methods
    let datePicker = UIDatePicker()
    
    func createDatePicker() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        doneBtn.tintColor = UIColor(red: 38/255, green: 11/255, blue: 95/255, alpha: 1)
        toolBar.setItems([doneBtn], animated: true)
        
        dateTextField.inputAccessoryView = toolBar
        dateTextField.inputView = datePicker
        
        datePicker.datePickerMode = .date
    }
    
    func configureButtons() {
        fixedTransaction.layer.cornerRadius = 15
        installmentTransaction.layer.cornerRadius = 15
        saveExpanse.layer.cornerRadius = 15
        
        fixedTransaction.configure(backgroundColor: .white, titleColor: .darkGray, borderWidth: 1, borderColor: UIColor.darkGray.cgColor)
        installmentTransaction.configure(backgroundColor: .white, titleColor: .darkGray, borderWidth: 1, borderColor: UIColor.darkGray.cgColor)
    }
    
    func configureTextField() {
        amountTextField.configure()
        dateTextField.configure()
    }
    
    // MARK: OBJCs
    @objc func donePressed() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        dateTextField.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
}
