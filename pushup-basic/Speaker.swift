//
//  Speaker.swift
//  pushup-basic
//
//  Created by Alexander, Jared on 11/8/17.
//  Copyright © 2017 Alexander, Jared. All rights reserved.
//

import Foundation
import AVFoundation

class Speaker {
    static let sharedInstance = Speaker()
    
    let speechSynthesizer = AVSpeechSynthesizer()
    
    func speak(text: String) {
        let speechUtterance = AVSpeechUtterance(string: text)
        speechSynthesizer.speak(speechUtterance)
    }
}
