//
//  CategoryVC.swift
//  Simp
//
//  Created by Rodrigo Lemos on 16/07/20.
//  Copyright © 2020 Rodrigo Lemos. All rights reserved.
//

import UIKit

protocol CategoryDelegate {
    func selectedCategory(category: Category)
}

class CategoryVC: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var foodBtn: UIButton!
    @IBOutlet weak var subscriptionBtn: UIButton!
    @IBOutlet weak var restaurantBtn: UIButton!
    @IBOutlet weak var homeBtn: UIButton!
    @IBOutlet weak var shoppingBtn: UIButton!
    @IBOutlet weak var selfCareBtn: UIButton!
    @IBOutlet weak var debtsBtn: UIButton!
    @IBOutlet weak var educationBtn: UIButton!
    @IBOutlet weak var clothesBtn: UIButton!
    @IBOutlet weak var healthBtn: UIButton!
    @IBOutlet weak var workBtn: UIButton!
    @IBOutlet weak var transportBtn: UIButton!
    @IBOutlet weak var groceryBtn: UIButton!
    @IBOutlet weak var otherBtn: UIButton!
    @IBOutlet weak var petsBtn: UIButton!
    @IBOutlet weak var giftsBtn: UIButton!
    @IBOutlet weak var familyBtn: UIButton!
    @IBOutlet weak var taxBtn: UIButton!
    @IBOutlet weak var investimentBtn: UIButton!
    @IBOutlet weak var hobbyBtn: UIButton!
    @IBOutlet weak var travelBtn: UIButton!
    
    var categoryDelegate: CategoryDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBAction
    @IBAction func categorySelected(_ sender: Any) {
        let buttonTapped = sender as! UIButton
        
        switch buttonTapped.tag {
        case 0:
            categoryDelegate.selectedCategory(category: .food)
            dismiss(animated: true, completion: nil)
            break
        case 1:
            categoryDelegate.selectedCategory(category: .subs)
            dismiss(animated: true, completion: nil)
            break
        case 2:
            categoryDelegate.selectedCategory(category: .restaurant)
            dismiss(animated: true, completion: nil)
            break
        case 3:
            categoryDelegate.selectedCategory(category: .home)
            dismiss(animated: true, completion: nil)
            break
        case 4:
            categoryDelegate.selectedCategory(category: .shopping)
            dismiss(animated: true, completion: nil)
            break
        case 5:
            categoryDelegate.selectedCategory(category: .selfCare)
            dismiss(animated: true, completion: nil)
            break
        case 6:
            categoryDelegate.selectedCategory(category: .debts)
            dismiss(animated: true, completion: nil)
            break
        case 7:
            categoryDelegate.selectedCategory(category: .education)
            dismiss(animated: true, completion: nil)
            break
        case 8:
            categoryDelegate.selectedCategory(category: .clothes)
            dismiss(animated: true, completion: nil)
            break
        case 9:
            categoryDelegate.selectedCategory(category: .health)
            dismiss(animated: true, completion: nil)
            break
        case 10:
            categoryDelegate.selectedCategory(category: .work)
            dismiss(animated: true, completion: nil)
            break
        case 11:
            categoryDelegate.selectedCategory(category: .transport)
            dismiss(animated: true, completion: nil)
            break
        case 12:
            categoryDelegate.selectedCategory(category: .grocery)
            dismiss(animated: true, completion: nil)
            break
        case 13:
            categoryDelegate.selectedCategory(category: .other)
            dismiss(animated: true, completion: nil)
            break
        case 14:
            categoryDelegate.selectedCategory(category: .pets)
            dismiss(animated: true, completion: nil)
            break
        case 15:
            categoryDelegate.selectedCategory(category: .gifts)
            dismiss(animated: true, completion: nil)
            break
        case 16:
            categoryDelegate.selectedCategory(category: .family)
            dismiss(animated: true, completion: nil)
            break
        case 17:
            categoryDelegate.selectedCategory(category: .tax)
            dismiss(animated: true, completion: nil)
            break
        case 18:
            categoryDelegate.selectedCategory(category: .investment)
            dismiss(animated: true, completion: nil)
            break
        case 19:
            categoryDelegate.selectedCategory(category: .hobby)
            dismiss(animated: true, completion: nil)
            break
        case 20:
            categoryDelegate.selectedCategory(category: .travel)
            dismiss(animated: true, completion: nil)
            break
        default:
            print("nenhuma categoria selecionada")
            break
        }
    }
}
