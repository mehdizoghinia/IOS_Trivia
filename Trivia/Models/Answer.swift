//
//  Answer.swift
//  Trivia
//
//  Created by Mehdi on 2022-04-04.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID() // Setting the UUID ourselves inside of the model, because API doesn't return a unique ID for each answer
    var text: AttributedString
    var isCorrect: Bool
}
