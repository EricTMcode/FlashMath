//
//  ViewModel.swift
//  FlashMath2
//
//  Created by Eric on 09/08/2024.
//

import Foundation

@Observable
class ViewModel {
    var questionNumber = 0
    var question: HowManyMultiplesQuestion!

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
