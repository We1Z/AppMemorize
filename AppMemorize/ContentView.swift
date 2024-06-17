//
//  ContentView.swift
//  AppMemorize
//
//  Created by Wei Zeng on 2024-06-11.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    let emojis = ["🚔","🚍","🚘","🚖","🚡"] // array of string called emojis a local variable
    
    var body: some View {
        HStack{
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.purple)
        .padding()
    }
}

// View themselves are immutable
struct CardView: View {
    let content: String
    @State var isFaceUp = false // @State Pointer to isFaceUp
    
    var body: some View {
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
                
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
    

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
