//
//  ContentView.swift
//  memorize
//
//  Created by hcbp on 04/12/21.
//  This is the view!

import SwiftUI

struct ContentView: View {
    //var emojis: Array<String> = ["🥲", "🥲", "😇", "😍", "😀"] //[String]
    @State var emojiCount: Int = 20
    var emojis: [String] = ["😀", "😃", "😄", "😁", "😆", "😅", "😂", "🤣", "🥲", "☺️", "😊", "😇", "🙂", "🙃", "😉", "😌", "😍", "🥰", "😘", "😗", "😙", "😚", "😋", "😛", "😝", "😜", "🤪", "🤨", "🧐", "🤓", "😎", "🥸"]
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid (columns: [GridItem(.adaptive(minimum: 74))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fill)
                    }
                }
                .foregroundColor(.red)
            }
            /*
            Spacer(minLength: 20)
            HStack {
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal)
            */
        }
    }
    /*
    var remove: some View {
        Button (action: {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        }, label: {
            Image(systemName: "minus.circle")
        })
    }
    var add: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    */
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
                    .fill()
                    .foregroundColor(.white)
                shape
                    .strokeBorder(lineWidth: 6)
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
.previewInterfaceOrientation(.portrait)
        ContentView()
            .preferredColorScheme(.light)
    }
}
