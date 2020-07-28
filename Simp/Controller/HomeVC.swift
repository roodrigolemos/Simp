//
//  ViewController.swift
//  Simp
//
//  Created by Rodrigo Lemos on 07/07/20.
//  Copyright © 2020 Rodrigo Lemos. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    // MARK: IBOUTLET
    @IBOutlet weak var currentMonth: UILabel!
    @IBOutlet weak var totalIncome: UILabel!
    @IBOutlet weak var restIncome: UILabel!
    @IBOutlet weak var monthSelected: UICollectionView!
    @IBOutlet weak var tableViewSpent: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monthSelected.dataSource = self
        monthSelected.delegate = self
        tableViewSpent.dataSource = self
        tableViewSpent.dataSource = self
    }
}

extension HomeVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "spentCell", for: indexPath) as! spentTableViewCell
        return cell
    }
}

extension HomeVC: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "monthCell", for: indexPath) as! monthCollectionViewCell
        return cell
    }
}

