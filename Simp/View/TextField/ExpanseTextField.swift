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
        
        frame.size.height = 54
    }
    
    var padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: padding)
    }
}
