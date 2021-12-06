//
//  ContentView.swift
//  memorize
//
//  Created by hcbp on 04/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack  {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
        .padding()
        .foregroundColor(.red)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        if isFaceUp {
            ZStack (alignment: .center) {
                RoundedRectangle(cornerRadius: 20.0)
                    .fill(.white)
                RoundedRectangle(cornerRadius: 20.0)
                    .stroke(lineWidth: 3)
                    .fill(.red)
                Text("😇")
                    .font(.largeTitle)
            }
        } else {
            ZStack (alignment: .center) {
                RoundedRectangle(cornerRadius: 20.0)
                    .fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
