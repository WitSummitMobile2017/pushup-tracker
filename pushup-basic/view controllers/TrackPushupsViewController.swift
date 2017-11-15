//
//  TrackPushupsViewController.swift
//  pushup-basic
//
//  Created by Alexander, Jared on 11/8/17.
//  Copyright © 2017 Alexander, Jared. All rights reserved.
//

import UIKit

class TrackPushupsViewController: UIViewController {
    
    var count = 0

    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func stopButtonPressed(_ sender: Any) {
        Persistance.sharedInstance.savePushupCount(count: count)
        count = 0
        countLabel.text = String(count)
        
    }
    @IBAction func noseButtonPressed(_ sender: Any) {
        count += 1
        countLabel.text = String(count)
        
        Speaker.sharedInstance.speak(text: String(count))
    }
    
}
