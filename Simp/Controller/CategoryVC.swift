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
    
    //MARK: Outlets
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var subscriptionImageView: UIImageView!
    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet weak var homeImageView: UIImageView!
    @IBOutlet weak var shoppingImageView: UIImageView!
    @IBOutlet weak var selfCareImageView: UIImageView!
    @IBOutlet weak var debtsImageView: UIImageView!
    @IBOutlet weak var educationImageView: UIImageView!
    @IBOutlet weak var clothesImageView: UIImageView!
    @IBOutlet weak var healthImageView: UIImageView!
    @IBOutlet weak var workImageView: UIImageView!
    @IBOutlet weak var transportImageView: UIImageView!
    @IBOutlet weak var groceryImageView: UIImageView!
    @IBOutlet weak var otherImageView: UIImageView!
    @IBOutlet weak var petsImageView: UIImageView!
    @IBOutlet weak var giftsImageView: UIImageView!
    @IBOutlet weak var familyImageView: UIImageView!
    @IBOutlet weak var taxImageView: UIImageView!
    @IBOutlet weak var investimentImageView: UIImageView!
    @IBOutlet weak var hobbyImageView: UIImageView!
    @IBOutlet weak var travelImageView: UIImageView!
    
    var categoryDelegate: CategoryDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTapGestureRecognizer()
    }
    
    // MARK: Objcs
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        guard let imageCategory = tappedImage.image else { return }
        
        categoryDelegate.selectedCategory(categoryImage: imageCategory)
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: Configure Methods
    func setTapGestureRecognizer() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer7 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer8 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer9 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer10 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer11 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer12 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer13 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer14 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer15 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer16 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer17 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer18 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer19 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer20 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        let tapGestureRecognizer21 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        
        foodImageView.isUserInteractionEnabled = true
        subscriptionImageView.isUserInteractionEnabled = true
        restaurantImageView.isUserInteractionEnabled = true
        homeImageView.isUserInteractionEnabled = true
        shoppingImageView.isUserInteractionEnabled = true
        selfCareImageView.isUserInteractionEnabled = true
        debtsImageView.isUserInteractionEnabled = true
        educationImageView.isUserInteractionEnabled = true
        clothesImageView.isUserInteractionEnabled = true
        healthImageView.isUserInteractionEnabled = true
        workImageView.isUserInteractionEnabled = true
        transportImageView.isUserInteractionEnabled = true
        groceryImageView.isUserInteractionEnabled = true
        otherImageView.isUserInteractionEnabled = true
        petsImageView.isUserInteractionEnabled = true
        giftsImageView.isUserInteractionEnabled = true
        familyImageView.isUserInteractionEnabled = true
        taxImageView.isUserInteractionEnabled = true
        investimentImageView.isUserInteractionEnabled = true
        hobbyImageView.isUserInteractionEnabled = true
        travelImageView.isUserInteractionEnabled = true
        
        foodImageView.addGestureRecognizer(tapGestureRecognizer)
        subscriptionImageView.addGestureRecognizer(tapGestureRecognizer2)
        restaurantImageView.addGestureRecognizer(tapGestureRecognizer3)
        homeImageView.addGestureRecognizer(tapGestureRecognizer4)
        shoppingImageView.addGestureRecognizer(tapGestureRecognizer5)
        selfCareImageView.addGestureRecognizer(tapGestureRecognizer6)
        debtsImageView.addGestureRecognizer(tapGestureRecognizer7)
        educationImageView.addGestureRecognizer(tapGestureRecognizer8)
        clothesImageView.addGestureRecognizer(tapGestureRecognizer9)
        healthImageView.addGestureRecognizer(tapGestureRecognizer10)
        workImageView.addGestureRecognizer(tapGestureRecognizer11)
        transportImageView.addGestureRecognizer(tapGestureRecognizer12)
        groceryImageView.addGestureRecognizer(tapGestureRecognizer13)
        otherImageView.addGestureRecognizer(tapGestureRecognizer14)
        petsImageView.addGestureRecognizer(tapGestureRecognizer15)
        giftsImageView.addGestureRecognizer(tapGestureRecognizer16)
        familyImageView.addGestureRecognizer(tapGestureRecognizer17)
        taxImageView.addGestureRecognizer(tapGestureRecognizer18)
        investimentImageView.addGestureRecognizer(tapGestureRecognizer19)
        hobbyImageView.addGestureRecognizer(tapGestureRecognizer20)
        travelImageView.addGestureRecognizer(tapGestureRecognizer21)
    }
}
