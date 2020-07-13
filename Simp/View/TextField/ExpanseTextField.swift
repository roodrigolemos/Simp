//
//  ExpanseTextField.swift
//  Simp
//
//  Created by Rodrigo Lemos on 13/07/20.
//  Copyright © 2020 Rodrigo Lemos. All rights reserved.
//

import UIKit

class ExpanseTextField: UITextField {

    func configure() {
        borderStyle = .none
        layer.masksToBounds = true
        
        layer.cornerRadius = 15
        layer.borderWidth = 1
        layer.borderColor = UIColor.lightGray.cgColor
    }
}
