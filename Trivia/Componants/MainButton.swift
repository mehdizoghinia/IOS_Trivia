//
//  MainButton.swift
//  Trivia
//
//  Created by Mehdi on 2022-04-04.
//

import SwiftUI

struct MainButton: View {
    var text: String
    var background: Color = Color("AccentColor")
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .frame(minWidth: 100)
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(text: "Next")
    }
}
