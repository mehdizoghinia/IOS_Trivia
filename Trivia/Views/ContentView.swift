//
//  ContentView.swift
//  Trivia
//
//  Created by Mehdi on 2022-04-02.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = GameManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                Spacer()
                VStack(spacing: 20) {
                    Text("Trivia Game")
                        .lilacTitle()
                    
                    Text("Press 'Start' to test your knowledge")
                        .foregroundColor(Color("AccentColor"))
                }
                
                Spacer()
                NavigationLink {
                    TriviaView()
                        .environmentObject(triviaManager)
                } label: {
                    MainButton(text: "Start")
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("gameBG").resizable().scaledToFill())
            .edgesIgnoringSafeArea(.all)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
