//
//  MenuView.swift
//  FlashMath2
//
//  Created by Eric on 10/09/2024.
//

import SwiftUI

struct MenuView: View {
    @AppStorage("LastScore") private var lastScore = 0
    @Environment(ViewModel.self) var viewModel

    var body: some View {
        VStack {
            Spacer()

            Image(.logo)
                .clipShape(.rect(cornerRadius: 20))
                .padding(.bottom, 40)

            Text("FLASH MATH")
                .titleStyle()
            Text("Last Score: \(lastScore)")
                .subtitleStyle()
            Button("New Game", action: viewModel.start)
                .buttonStyle(.primary)

            Spacer()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .backgroundGradient()
    }
}

#Preview {
    MenuView()
        .environment(ViewModel())
}
