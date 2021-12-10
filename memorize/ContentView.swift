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
    @State var isFaceUp = true
    //svar content: String
    var body: some View {
        let shape =  RoundedRectangle(cornerRadius: 20.0)
        ZStack (alignment: .center) {
            if isFaceUp {
                shape
                    .fill(.white)
                shape
                    .stroke(lineWidth: 3)
                    .fill(.red)
                Text("😇")
                    .font(.largeTitle)
            } else {
                shape
                    .fill()
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp
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
