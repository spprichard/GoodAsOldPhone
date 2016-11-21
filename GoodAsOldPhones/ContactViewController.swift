//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by Steven Prichard on 11/20/16.
//  Copyright © 2016 Steven Prichard. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
    }


    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSize(width: 375, height: 800)
    }
    

}
