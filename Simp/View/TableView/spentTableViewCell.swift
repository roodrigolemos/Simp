//
//  spentTableViewCell.swift
//  Simp
//
//  Created by Rodrigo Lemos on 09/07/20.
//  Copyright © 2020 Rodrigo Lemos. All rights reserved.
//

import UIKit

class spentTableViewCell: UITableViewCell {
    
    // MARK: OUTLETS
    @IBOutlet weak var spentName: UILabel!
    @IBOutlet weak var spentDate: UILabel!
    @IBOutlet weak var spentValue: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
