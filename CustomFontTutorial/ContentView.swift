//
//  ContentView.swift
//  CustomFontTutorial
//
//  Created by Fatih Durmaz on 24.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List(1..<51) { item in
                    NavigationLink{
                        DetailView(index: item)
                    } label: {
                        HStack {
                            Image(systemName: "\(item).circle")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundStyle(.orange.gradient)
                            
                            VStack (alignment: .leading) {
                                Text("Lorem ipsum dolor sit amet")
                                Text("Consectetur adipiscing elit")
                            }
                        }
                        .alignmentGuide(.listRowSeparatorLeading, computeValue: { dimension in
                            return 0
                        })
                        .badge(
                            Text("\(Int.random(in: 1..<10))")
                                .foregroundStyle(.orange)
                                .bold()
                        )
                    }
                }
                .contentMargins(10)
            }
            .navigationTitle("Custom Fonts")
        }
        .tint(.orange)
    }
    
    
}

#Preview {
    ContentView()
}
