//
//  Concentration.swift
//  Con
//
//  Created by Roy Berner on 30/09/2018.
//  Copyright © 2018 Roy Berner. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceCardUp: Int?
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceCardUp, matchIndex != index {
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFacesUp = true
                indexOfOneAndOnlyFaceCardUp = nil
            } else {
                // either two cards of no card is face up
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFacesUp = false
                }
                cards[index].isFacesUp = true
                indexOfOneAndOnlyFaceCardUp = index
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards{
        let card = Card()
        cards += [card, card]
        }
        // TODO shuffle the cards
        for number in 0..<cards.count{
            let randomindex = Int(arc4random_uniform(UInt32(cards.count - number)))
            cards.append(cards.remove(at: randomindex))
        }
    }
}
