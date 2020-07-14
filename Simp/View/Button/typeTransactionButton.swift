//
//  typeTransactionButton.swift
//  Simp
//
//  Created by Rodrigo Lemos on 14/07/20.
//  Copyright © 2020 Rodrigo Lemos. All rights reserved.
//

import UIKit

class typeTransactionButton: UIButton {
    
    func configure(backgroundColor: UIColor, titleColor: UIColor, borderWidth: Int, borderColor: CGColor) {
        self.backgroundColor = backgroundColor
        self.setTitleColor(titleColor, for: .normal)
        self.layer.borderColor = borderColor
        self.layer.borderWidth = CGFloat(borderWidth)
    }
}
