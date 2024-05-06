//
//  TimeViewModel.swift
//  QuitSugar
//
//  Created by Roman on 06.05.24.
//

import Foundation
import SwiftUI

@MainActor
class TimerViewModel: ObservableObject {
    @Published var days: Int = 0
    @Published var hours: Int = 0
    @Published var minutes: Int = 0
    @Published var seconds: Int = 0
    
    private var timer: Timer?
    private var startDate: Date?
    
    init() {
    }
    
    func startTimer() {
        startDate = Date()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] timer in
            guard let startDate = self?.startDate else { return }
            let currentTime = Date()
            let elapsedTime = currentTime.timeIntervalSince(startDate)
            self?.updateTimeComponents(elapsedTime)
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    func resetTimer() {
        stopTimer()
        days = 0
        hours = 0
        minutes = 0
        seconds = 0
    }
    
    private func updateTimeComponents(_ timeInterval: TimeInterval) {
        days = Int(timeInterval) / 86400
        hours = Int(timeInterval) / 3600 % 24
        minutes = Int(timeInterval) / 60 % 60
        seconds = Int(timeInterval) % 60
    }
}

struct ButtonView: View {
    let title: String
    let action: () -> Void
    let backgroundColor: Color
    
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundStyle(.white)
                .padding(.vertical, 20)
                .padding(.horizontal, 40)
                .background(backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius:20))
        }
        .offset(y: -100)
    }
}
