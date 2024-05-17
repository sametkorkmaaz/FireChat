//
//  WelcomeViewController.swift
//  FireChat
//
//  Created by Samet Korkmaz on 17.05.2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        let titleText = "🔥FireChat"
        var charIndex = 0.0
        
        for char in titleText { // titleText karakterlerini gezip titleLabel a ekliyoruz
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(char)
            }
            charIndex += 1
        }
    }
    
    
}
