//
//  ViewController.swift
//  Con
//
//  Created by Roy Berner on 28/09/2018.
//  Copyright © 2018 Roy Berner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
           flipcountLabel.text = "Flips: \(flipCount)"
        }
    }

    @IBOutlet weak var flipcountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🎃","👻","🎃","👻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNUmber = cardButtons.firstIndex(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNUmber], on: sender)
        } else {
            print("card was not in buttons")
        }
        
    }
    

    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor  = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor  = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}

