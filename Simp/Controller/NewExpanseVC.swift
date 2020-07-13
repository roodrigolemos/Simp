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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amountTextField.configure()
        dateTextField.configure()
    }
    
}
