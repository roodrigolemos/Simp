//
//  typeTransactionTextField.swift
//  Simp
//
//  Created by Rodrigo Lemos on 14/07/20.
//  Copyright © 2020 Rodrigo Lemos. All rights reserved.
//

import UIKit

class typeTransactionTextField: UITextField {
    
    func configure(bacgkroundColor: UIColor, titleColor: UIColor, borderWidth: Int, borderColor: CGColor, title: String) {
        self.frame.size.height = 39
        self.frame.size.width = 142
        
        self.text = title
        self.textColor = titleColor
        
        self.backgroundColor = backgroundColor
        self.layer.borderColor = borderColor
        self.layer.borderWidth = CGFloat(borderWidth)
        
        
        borderStyle = .none
        layer.masksToBounds = true
        layer.cornerRadius = 15
        
        textAlignment = .center
    }

}
