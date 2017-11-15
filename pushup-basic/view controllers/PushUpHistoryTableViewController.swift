//
//  PushUpHistoryTableViewController.swift
//  pushup-basic
//
//  Created by Alexander, Jared on 11/8/17.
//  Copyright © 2017 Alexander, Jared. All rights reserved.
//

import UIKit

class PushUpHistoryTableViewController: UITableViewController {
    
    var history: [Int] = [Int]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        history = Persistance.sharedInstance.fetchPushupCountHistory().sorted(by: {$0 > $1})
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = String(history[indexPath.row])

        return cell
    }
 

}
