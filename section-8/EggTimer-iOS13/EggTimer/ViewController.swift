//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBAction func EggButtonPressed(_ sender: UIButton) {
        let secondsRequired = [
            "Soft": TimeInterval(300),
            "Medium": TimeInterval(420),
            "Hard": TimeInterval(720)
        ]
        
        var secondsExecuted = TimeInterval(0)
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            let progressValue = Float(secondsExecuted) / Float(secondsRequired[sender.currentTitle!]! - 1)
            self.progressView.setProgress(progressValue, animated: true)
            
            secondsExecuted += 1

            if secondsExecuted == secondsRequired[sender.currentTitle!] {
                timer.invalidate()
            }
        }
    }
}
