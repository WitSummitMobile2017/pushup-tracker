//
//  ViewController.swift
//  pushup-basic
//
//  Created by Alexander, Jared on 11/7/17.
//  Copyright © 2017 Alexander, Jared. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        recordLabel.text = "Record: \(Persistance.sharedInstance.fetchPushupCountRecord()) pushups"
    }
}

