//
//  Question.swift
//  FlashMath2
//
//  Created by Eric on 08/08/2024.
//

import Foundation

protocol Question {
    var questionText: String { get set }
    var correctAnswer: Int { get set }
    var allAnswer: [Int] { get set }
    init()
}
