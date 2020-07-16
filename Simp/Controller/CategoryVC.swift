//
//  CategoryVC.swift
//  Simp
//
//  Created by Rodrigo Lemos on 16/07/20.
//  Copyright © 2020 Rodrigo Lemos. All rights reserved.
//

import UIKit

protocol CategoryDelegate {
    func selectedCategory(categoryImage: UIImage)
}

class CategoryVC: UIViewController {
    
    @IBOutlet weak var foodButton: UIButton!
    
    var categoryDelegate: CategoryDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func categorySelected(_ sender: Any) {
        let button = sender as? UIButton
        guard let buttonUnwrapped = button else { return }
        guard let imageUnwrapped = buttonUnwrapped.currentImage else { return }
        
        categoryDelegate.selectedCategory(categoryImage: imageUnwrapped)
        dismiss(animated: true, completion: nil)
    }
}
