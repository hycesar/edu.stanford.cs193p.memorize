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
            CardView() \
            CardView()
            CardView()
            CardView()
        }
        .padding()
    }
}

struct CardView: View {
    var body: some View {
        ZStack (alignment: .center) {
            RoundedRectangle(cornerRadius: 20.0)
                .stroke(lineWidth: 3)
                .fill(.red)
                .colorInvert()
            Text("Hello, my worlds!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
