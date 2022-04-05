//
//  TriviaView.swift
//  Trivia
//
//  Created by Mehdi on 2022-04-04.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: GameManager

    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Trivia Game")
                    .lilacTitle()

                Text("Congratulations, you completed the game! 🥳 ")
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    MainButton(text: "Play again")
                }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("gameBG").resizable().scaledToFill()).edgesIgnoringSafeArea(.all)
        } else {
            QuestionView()
                .background(Image("gameBG").resizable().scaledToFill()).edgesIgnoringSafeArea(.all)
                .environmentObject(triviaManager)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(GameManager())
    }
}
