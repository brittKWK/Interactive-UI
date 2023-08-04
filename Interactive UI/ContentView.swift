//
//  ContentView.swift
//  Interactive UI
//
//  Created by scholar on 7/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    var body: some View {
        VStack(spacing: 75) {
           Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
                .padding()
            
            Button("Submit") {
                print(name)
                textTitle = "Welcome \(name)!"
            }//button
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(Color(hue: 0.886, saturation: 0.362, brightness: 0.951))
        }//v stack
    
    }//some view
}//struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
