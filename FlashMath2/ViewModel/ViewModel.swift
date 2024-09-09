//
//  ViewModel.swift
//  FlashMath2
//
//  Created by Eric on 09/09/2024.
//

import Foundation

@Observable
@dynamicMemberLookup

class ViewModel {
    var questionNumber = 0
    var question: HowManyMultiplesQuestion!

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
}
