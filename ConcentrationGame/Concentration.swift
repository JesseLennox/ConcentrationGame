//
//  Concentration.swift
//  ConcentrationGame
//
//  Created by Jesse Lennox on 9/5/19.
//  Copyright © 2019 Jesse Hanna. All rights reserved.
//

import Foundation


class Concentration
{
    var cards = [Card]()
    
    func chooseCard(at index: Int){
        if cards[index].isFaceUp {
            cards[index].isFaceUp = false
        } else {
            cards[index].isFaceUp = true
        }
        
    }
    
    init (numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards
        {
            let card = Card()
                cards += [card, card]
            }
        
        // To DO - Shuffle the cards
        }
    }
