//
//  Styles.swift
//  FlashMath2
//
//  Created by Eric on 09/08/2024.
//

import SwiftUI

extension View {
    func backgroundGradient() -> some View {
        self
            .background(LinearGradient(colors: [.indigo, .black], startPoint: .top, endPoint: .bottom))
    }
}

struct QuestionButton: ButtonStyle {
    var color: Color

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.largeTitle.bold())
            .shadow(color: configuration.isPressed ? .clear : .black.opacity(0.75), radius: 3)
            .padding(10)
            .frame(maxWidth: .infinity)
            .background(configuration.isPressed ? .white : color)
            .clipShape(.capsule)
            .foregroundStyle(configuration.isPressed ? .blue : .white)
            .shadow(radius: configuration.isPressed ? 0 : 10)
    }
}

extension ButtonStyle where Self == QuestionButton {
    static func question(color: Color) -> QuestionButton {
        QuestionButton(color: color)
    }
}
