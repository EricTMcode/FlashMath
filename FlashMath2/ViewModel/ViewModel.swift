//
//  ViewModel.swift
//  FlashMath2
//
//  Created by Eric on 26/06/2026.
//

import Foundation

@Observable
class ViewModel {
    var questionNumber = 0
    var question: HowManyMultipesQuestion!

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
}
