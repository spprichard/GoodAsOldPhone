//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Steven Prichard on 11/20/16.
//  Copyright © 2016 Steven Prichard. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    var product : Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let product = product{
            productNameLabel.text = product.name
            if let productImage = product.productImage{
                productImageView.image = UIImage(named: productImage)
            }
        }
        
        
    }

   
    @IBAction func addToCartPressed(_ sender: Any) {
        print("Button Pressed")
    }

}
