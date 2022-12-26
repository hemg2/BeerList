//
//  BeerListViewController.swift
//  Brewery
//
//  Created by 1 on 2022/12/26.
//

import UIKit


class BeerListViewController: UITableViewController {
    
    var beerList = [Beer]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "할머니 맥주"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}


extension BeerListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beerList.count
    }
}

