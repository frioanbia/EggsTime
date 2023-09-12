//
//  ViewController.swift
//  EggsTime
//
//  Created by Frio Anbia on 11/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    let eggsTime = [
        "Soft": 5,
        "Medium": 7,
        "Hard": 12
    ]
    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle! // Soft, Medium, Hard
        
        print(eggsTime[hardness]!)
    }
}

