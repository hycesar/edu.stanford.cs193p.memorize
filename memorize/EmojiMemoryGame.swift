//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by hcbp on 17/12/21.
//  This is the ViewModel!

import SwiftUI

func makeCardContent(index: Int) -> String {
    return "🥸"
}

class EmojiMemoryGame {
    private var model: MemoryGame<String> =
        MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: makeCardContent(index: Int) -> String)
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
