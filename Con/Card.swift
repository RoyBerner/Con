//
//  Card.swift
//  Con
//
//  Created by Roy Berner on 30/09/2018.
//  Copyright © 2018 Roy Berner. All rights reserved.
//

import Foundation

struct Card {
    var isFacesUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return Card.identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
