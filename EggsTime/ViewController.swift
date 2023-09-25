//
//  ViewController.swift
//  EggsTime
//
//  Created by Frio Anbia on 11/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var secondTimerLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var secondRemaining = 60
    
    var timer = Timer()
    
    var eggsTime = [
        "Soft": 30,
        "Medium": 45,
        "Hard": 60
    ]
    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle! // Soft, Medium, Hard
        
        secondRemaining = eggsTime[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        
    }
    
    @objc func update(){
        if secondRemaining > 0 {
            print("\(secondRemaining) seconds.")
            secondRemaining -= 1
            secondTimerLabel.text = String("\(secondRemaining) seconds.")
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
        }
    }
}
