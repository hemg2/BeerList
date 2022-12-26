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
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BeerListCell", for: indexPath) as? BeerListCell else { return UITableViewCell() }
                
                let beer = beerList[indexPath.row]
                cell.configure(with: beer)
        
        return UITableViewCell()
    }
}

