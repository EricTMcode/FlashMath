//
//  ViewModel.swift
//  FlashMath2
//
//  Created by Eric on 07/08/2024.
//

import Foundation

@Observable
@dynamicMemberLookup
class ViewModel {
    enum PlayState {
        case menu, playing, gameOver
    }
    
    private(set) var playState = PlayState.menu
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
        timeAllowed *= 0.99
    }

    func check(answer: Int) {
        if answer == question.correctAnswer {
            nextQuestion()
        } else {
            // Game Over
        }
    }

    func gameOver() {
        playState = .gameOver
        UserDefaults.standard.set(questionNumber - 1, forKey: "LastScore")
    }

    func start() {
        playState = .playing
        timeAllowed = 10
        questionNumber = 0
        nextQuestion()
    }

    func end() {
        playState = .menu
    }
}
