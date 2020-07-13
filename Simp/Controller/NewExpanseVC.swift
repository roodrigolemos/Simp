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
    
}
