//
//  Expanse.swift
//  Simp
//
//  Created by Rodrigo Lemos on 28/07/20.
//  Copyright © 2020 Rodrigo Lemos. All rights reserved.
//

import UIKit

class Expanse {
    var amount: Int
    var date: String
    var repeatTransition: String
    var category: String
    
    init(amount: Int, date: String, repeatTransition: String, category: String) {
        self.amount = amount
        self.date = date
        self.repeatTransition = repeatTransition
        self.category = category
    }
}
