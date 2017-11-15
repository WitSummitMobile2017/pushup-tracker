//
//  Persistance.swift
//  pushup-basic
//
//  Created by Alexander, Jared on 11/8/17.
//  Copyright © 2017 Alexander, Jared. All rights reserved.
//

import Foundation

class Persistance {
    static let sharedInstance = Persistance()
    
    func fetchPushupCountRecord() -> Int {
        let array = fetchPushupCountHistory().sorted(by: {$0 > $1})
        
        return array.first ?? 0
    }
    
    func fetchPushupCountHistory() -> [Int] {
        let userDefaults = UserDefaults.standard
        
        let array = userDefaults.object(forKey: "pushupHistory") as? [Int]
        
        return array ?? [Int]()
    }
    
    func savePushupCount(count: Int) {
        let userDefaults = UserDefaults.standard

        var array = fetchPushupCountHistory()
        
        array.append(count)
        
        userDefaults.set(array, forKey: "pushupHistory")
    }
}
