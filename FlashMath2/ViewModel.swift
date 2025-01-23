//
//  ViewModel.swift
//  FlashMath2
//
//  Created by Eric on 23/01/2025.
//

import Foundation

@Observable
@dynamicMemberLookup
class ViewModel {
    var questionNumber = 0
    var question: HowManyMultiplesQuestion!
    var timeAllowed = 10.0

    subscript<Value>(dynamicMember keyPath: KeyPath<HowManyMultiplesQuestion, Value>) -> Value {
        question[keyPath: keyPath]
    }

    init() {
        nextQuestion()
    }

    func nextQuestion() {
        question = HowManyMultiplesQuestion()
        questionNumber += 1
    }

    func check(answer: Int) {
        if answer == question.correctAnswer {
            nextQuestion()
        } else {
            // game over
        }
    }

    func end() {
        // end the game
    }
}
