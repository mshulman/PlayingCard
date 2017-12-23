//
//  ViewController.swift
//  PlayingCard
//
//  Created by Michael Shulman on 12/22/17.
//  Copyright © 2017 Michael Shulman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var deck = PlayingCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }
}

