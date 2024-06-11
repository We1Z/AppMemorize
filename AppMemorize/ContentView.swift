//
//  ContentView.swift
//  AppMemorize
//
//  Created by Wei Zeng on 2024-06-11.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.purple)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack (content: {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("🚗").font(.largeTitle)
            }else{
                RoundedRectangle(cornerRadius: 12)
                
            }
        })
    }
}
    

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
