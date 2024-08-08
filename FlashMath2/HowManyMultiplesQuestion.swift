//
//  HowManyMultiplesQuestion.swift
//  FlashMath2
//
//  Created by Eric on 07/08/2024.
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
        print(numbers)
        print(correctAnswer)

        let multiple = Int.random(in: 2...12)
        print(multiple)
        let adjustment = Int.random(in: 0...multiple - 1)
        print(adjustment)
        let targetNumber = correctAnswer * multiple + adjustment
        print(targetNumber)

        questionText = "How many \(multiple)s in \(targetNumber)?"
        allAnswers = Array(numbers.prefix(4))
        allAnswers.append(correctAnswer)
        allAnswers.shuffle()
    }
}
