//
//  ViewController.swift
//  ConcentrationGame
//
//  Created by Jesse Lennox on 9/5/19.
//  Copyright © 2019 Jesse Hanna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
    
    var flipCount: Int = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    @IBOutlet weak var flipCountLabel: UILabel!

    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            game.chooseCard(at: cardNumber)
        } else {
            print( "Chosen card was not in cardButtons" )
        }
            func updateViewFromModel() {
            for index in cardButtons.indices {
                let button = cardButtons[index]
                let card = game.cards[index]
                if card.isFaceUp {
                    button.setTitle(emoji(for: card), for:
                        UIControl.State.normal)
                    button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                     } else {
                    button.setTitle("", for: UIControl.State.normal)
                    button.backgroundColor = card.isMatched ? #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 0) : #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
                }
            }
        }
        var emojiChoices  = ["🦋","🐝","🐌","🐞","🐜","🦟","🦗","🕷","🐛"]
        
        var emoji = [Int:String]()
    
        func emoji(for card: Card) -> String {
          return emoji[card.identifier] ?? "?"
        }
    }
}

