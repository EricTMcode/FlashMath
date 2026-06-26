//
//  ViewModel.swift
//  FlashMath2
//
//  Created by Eric on 26/06/2026.
//

import Foundation

@Observable
@dynamicMemberLookup
class ViewModel {
    var questionNumber = 0
    var question: HowManyMultipesQuestion!

    subscript<Value>(dynamicMember keyPath: KeyPath<HowManyMultipesQuestion, Value>) -> Value {
        question[keyPath: keyPath]
    }

    init() {
        nextQuestion()
    }

    func nextQuestion() {
        question = HowManyMultipesQuestion()
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
        
    }
}
