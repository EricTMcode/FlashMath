//
//  ContentView.swift
//  FlashMath2
//
//  Created by Eric on 02/08/2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(ViewModel.self) var viewModel
    
    var body: some View {
        switch viewModel.playState {
        case .menu:
            MenuView()
            
        case .playing:
            PlayingView()
            
        case .gameOver:
            GameOverView()
        }
    }
}

#Preview {
    ContentView()
        .environment(ViewModel())
}
