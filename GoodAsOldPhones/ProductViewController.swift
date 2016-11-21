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
    var productName : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productNameLabel.text = productName
        productImageView.image = #imageLiteral(resourceName: "phone-fullscreen3")
    }

   
    @IBAction func addToCartPressed(_ sender: Any) {
        print("Button Pressed")
    }

}
