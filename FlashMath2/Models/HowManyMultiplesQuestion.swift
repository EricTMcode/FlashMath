//
//  HowManyMultiplesQuestion.swift
//  FlashMath2
//
//  Created by Eric on 23/01/2025.
//

import Foundation

struct HowManyMultiplesQuestion: Question {
    var questionText: String
    var correctAnswer: Int
    var allAnswers: [Int]

    init() {
        var numbers = (2...12).shuffled()
        correctAnswer = numbers.removeFirst()

        let multiple = Int.random(in: 2...12)
        let adjustement = Int.random(in: 0...multiple - 1)
        let targetNumber = correctAnswer * multiple + adjustement

        questionText = "How many \(multiple)s in \(targetNumber)?"
        allAnswers = Array(numbers.prefix(4))
        allAnswers.append(correctAnswer)
        allAnswers.shuffle()
    }
}
