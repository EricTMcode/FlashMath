//
//  HowManyMultiplesQuestion.swift
//  FlashMath2
//
//  Created by Eric on 09/08/2024.
//

import Foundation

struct HowManyMultiplesQuestion: Question {
    var questionText: String
    var correctAnswer: Int
    var allAnswers: [Int]

    init() {
        var numbers = (2...12).shuffled()
        print(numbers)
        correctAnswer = numbers.removeFirst()
        print(correctAnswer)

        let multiple = Int.random(in: 2...12)
        let adjustment = Int.random(in: 0...multiple - 1)
        let targetNumber = correctAnswer * multiple + adjustment

        questionText = "How many \(multiple)s in \(targetNumber)?"
        allAnswers = Array(numbers.prefix(4))
        print(allAnswers)
        allAnswers.append(correctAnswer)
        allAnswers.shuffle()
    }
}
