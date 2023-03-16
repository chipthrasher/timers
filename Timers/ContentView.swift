//
//  ContentView.swift
//  Timers
//
//  Created by Chip on 3/8/23.
//

import SwiftUI

struct ContentView: View {
    @State var items = ["Item 1", "Hi"]
    @State var inputText: String = ""
    
    var body: some View {
        VStack {
            // Top bar content
            HStack {
                Text("Timers")
                    .font(.title)
                    .bold()
                
                Spacer()
                
                Button(action: {
                    let newItem = "Item \(items.count + 1)"
                    items.append(newItem)
                }) {
                    Image(systemName: "plus")
                        .font(.title)
                }
            }
            .padding()
            .foregroundColor(.black)
            .frame(alignment: .top)
            
            Spacer()
            
            ScrollView() {
                VStack(spacing: 0) {
                    ForEach(items, id: \.self) { index in
                        TimerView()
                    }
                }
                .padding(.vertical)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
