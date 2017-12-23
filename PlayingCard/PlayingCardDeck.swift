//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by Michael Shulman on 12/22/17.
//  Copyright © 2017 Michael Shulman. All rights reserved.
//

import Foundation

struct PlayingCardDeck
{
    private(set) var cards = [PlayingCard]()
    
    init () {
        for rank in PlayingCard.Rank.all {
            for suit in PlayingCard.Suit.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
    mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
        } else {
            return nil
        }
    }

}

extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else {
            return 0
        }
    }
}
