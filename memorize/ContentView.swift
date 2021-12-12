//
//  ContentView.swift
//  memorize
//
//  Created by hcbp on 04/12/21.
//

import SwiftUI

struct ContentView: View {
    //var emojis: Array<String> = ["🥲", "🥲", "😇", "😍", "😀"] //[String]
    var emojiCount: Int = 4
    var emojis: [String] = ["😀", "😃", "😄", "😁", "😆", "😅", "😂", "🤣", "🥲", "☺️", "😊", "😇", "🙂", "🙃", "😉", "😌", "😍", "🥰", "😘", "😗", "😙", "😚", "😋", "😛", "😝", "😜", "🤪", "🤨", "🧐", "🤓", "😎", "🥸"]
    var body: some View {
        HStack  {
            ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                CardView(content: emoji)
            }
        }
        .padding()
        .foregroundColor(.red)
    }
}

struct CardView: View {
    @State var isFaceUp = true
    var content: String = "⁉️"
    var body: some View {
        let shape =  RoundedRectangle(cornerRadius: 10.0)
        ZStack (alignment: .center) {
            if isFaceUp {
                shape
                    .fill(.white)
                shape
                    .stroke(lineWidth: 3)
                    .fill(.red)
                Text(content)
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
