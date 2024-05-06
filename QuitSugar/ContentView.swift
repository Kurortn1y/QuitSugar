//
//  ContentView.swift
//  QuitSugar
//
//  Created by Roman on 28.03.24.
//

import SwiftUI

struct ContentView: View {

    
    var body: some View {
        TabView {
            TimerView()
                .tabItem { Label("Timer", systemImage: "clock.fill") }
            ProgressView()
                .tabItem { Label("Progress", systemImage: "chart.bar.fill") }
            MotivationView()
                .tabItem { Label("Motivation", systemImage: "brain.head.profile") }
        }
    }
}

#Preview {
    ContentView()
}
