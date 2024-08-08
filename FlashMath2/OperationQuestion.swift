//
//  OperationQuestion.swift
//  FlashMath2
//
//  Created by Eric on 08/08/2024.
//

import Foundation

struct OperationQuestion:Question {
    var questionText: String
    var correctAnswer: Int
    var allAnswers: [Int]

    init() {
        let firstNumber: Int
        let secondNumber: Int
        let wrongVariations = [-2, -1, 1, 2]

        let operation: (Int, Int) -> Int
        let variant = Int.random(in: 1...5)

        switch variant {
        case 1:
            firstNumber = Int.random(in: 2...20)
            secondNumber = Int.random(in: 2...20)
            correctAnswer = firstNumber + secondNumber
            questionText = "\(firstNumber) + \(secondNumber)?"
            operation = (+)
        case 2:
            firstNumber = Int.random(in: 2...20)
            secondNumber = Int.random(in: 2...20)
            correctAnswer = firstNumber - secondNumber
            questionText = "\(firstNumber) - \(secondNumber)?"
            operation = (-)
        case 3:
            firstNumber = Int.random(in: 2...20)
            secondNumber = Int.random(in: 2...20)
            correctAnswer = firstNumber * secondNumber
            questionText = "\(firstNumber) × \(secondNumber)?"
            operation = (*)
        case 4:
            let otherNumber = Int.random(in: 2...12)
            secondNumber = Int.random(in: 2...12)
            firstNumber = otherNumber * secondNumber
            correctAnswer = otherNumber
            questionText = "\(firstNumber) ÷ \(secondNumber)?"
            operation = (/)
        case 5:
            firstNumber = Int.random(in: 2...12)
            secondNumber = firstNumber
            correctAnswer = firstNumber * firstNumber
            questionText = "\(firstNumber)²?"
            operation = (*)

        default:
            fatalError("Unknown question variant: \(variant)")
        }

        allAnswers = (0...3).map { index in
            operation(firstNumber, secondNumber) + wrongVariations[index]
        }

        allAnswers.append(correctAnswer)
        allAnswers.shuffle()
    }
}
