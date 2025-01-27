//
//  Question.swift
//  FlashMath2
//
//  Created by Eric on 27/01/2025.
//

import Foundation

protocol Question {
    var questionText: String { get set }
    var correctAnswer: Int { get set }
    var allAnswers: [Int] { get set }
    init()
}
