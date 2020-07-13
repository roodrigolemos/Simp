//
//  NewExpanseVC.swift
//  Simp
//
//  Created by Rodrigo Lemos on 13/07/20.
//  Copyright © 2020 Rodrigo Lemos. All rights reserved.
//

import UIKit

class NewExpanseVC: UIViewController {
    
    @IBOutlet weak var amountTextField: ExpanseTextField!
    @IBOutlet weak var dateTextField: ExpanseTextField!
    @IBOutlet weak var fixedTransaction: UIButton!
    @IBOutlet weak var installmentTransaction: UIButton!
    @IBOutlet weak var saveExpanse: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        configureTextField()
        configureButtons()
        createDatePicker()
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
