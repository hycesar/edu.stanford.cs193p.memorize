//
//  memoryGame.swift
//  memorize
//
//  Created by hcbp on 17/12/21.
//  This is the model!

import Foundation

struct MemoryGame<CardContent> {
    //var cards: Array<MemoryGame.Card>
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card){
        
    }
        
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        
        // add numberOfPairsOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card.init(content: content))
            cards.append(Card.init(content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
