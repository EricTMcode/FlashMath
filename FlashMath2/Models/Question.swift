//
//  Question.swift
//  FlashMath2
//
//  Created by Eric on 27/06/2026.
//

import Foundation

protocol Question {
    var questionText: String { get set }
    var correctAnswer: Int { get set }
    var allAnswers: [Int] { get set }
    init()
}
