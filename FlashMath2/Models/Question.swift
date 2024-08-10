//
//  Question.swift
//  FlashMath2
//
//  Created by Eric on 10/08/2024.
//

import Foundation

protocol Question {
    var questionText: String { get set }
    var correctAnswer: Int { get set }
    var allAnswers: [Int] { get set }
    init()
}