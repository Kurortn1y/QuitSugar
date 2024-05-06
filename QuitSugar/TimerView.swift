//
//  TimerView.swift
//  QuitSugar
//
//  Created by Roman on 28.03.24.
//

import SwiftUI

struct TimerView: View {
    
    @StateObject var timerViewModel: TimerViewModel = TimerViewModel()
    @State private var isCounting: Bool = false
    
    var body: some View {
        ZStack {
            Color.kaif
                .ignoresSafeArea()
            
            VStack {
                Text("Я не употребляю сахар уже :")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .bold()
                    .padding(.bottom, 20)
                
                HStack {
                    VStack {
                        Text(String(format: "%02d", timerViewModel.days))
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .bold()
                        
                        Text("дней")
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text(String(format: "%02d", timerViewModel.hours))
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .bold()
                        
                        Text("часов")
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text(String(format: "%02d", timerViewModel.minutes))
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .bold()
                        
                        Text("минут")
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text(String(format: "%02d", timerViewModel.seconds))
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .bold()
                        
                        Text("секунд")
                            .foregroundColor(.white)
                    }
                }
                .overlay(RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.white, lineWidth: 4)
                    .frame(width: 280, height: 100)
                )
            }
            .padding(.top, -220)
            VStack {
                ButtonView(
                    title: isCounting ? "Срыв" : "Старт",
                    action: {
                        if isCounting {
                            timerViewModel.stopTimer()
                            timerViewModel.resetTimer()
                        } else {
                            timerViewModel.startTimer()
                        }
                        isCounting.toggle()
                    },
                    backgroundColor: isCounting ? Color.red : Color.airForse.opacity(0.2))
                
            }
            .padding(.top, 400)
        }
    }
}


#Preview {
    TimerView()
}

