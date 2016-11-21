//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Web Dev on 11/21/16.
//  Copyright © 2016 Steven Prichard. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames : [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNames = ["1907 Wall Set", "1921 Dial Phone", "1937 Desk Set", "1984 Motorola Portable"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let pName = productNames{
            return pName.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        cell.imageView?.image = UIImage(named: "image-cell1")
        let productName = productNames?[indexPath.row]
        if let pName = productName{
            cell.textLabel?.text = pName
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct"{
            let productVC = segue.destination as? ProductViewController
            productVC?.productName = "Really Old Phone"
        }
    }

}
