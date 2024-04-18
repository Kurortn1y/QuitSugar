//
//  TimerView.swift
//  QuitSugar
//
//  Created by Roman on 28.03.24.
//

import SwiftUI

struct TimerView: View {
    
    
    var body: some View {
        ZStack {
            Color.kaif
                .ignoresSafeArea()

            VStack {
                Text("Я не употребляю сахар уже :")
                    .font(.system(size: 18))
                    .foregroundStyle(.white)
                    .bold()
                    .padding(.bottom, 20)
                HStack {
                    VStack {
                        Text("3")
                            .font(.system(size: 40))
                            .foregroundStyle(.white)
                            .bold()
                        
                        Text("дней")
                            .foregroundStyle(.white)
                    }
                    VStack {
                        Text("10")
                            .font(.system(size: 40))
                            .foregroundStyle(.white)
                            .bold()
                        
                        Text("часов")
                            .foregroundStyle(.white)
                    }
                    VStack {
                        Text("37")
                            .font(.system(size: 40))
                            .foregroundStyle(.white)
                            .bold()
                        
                        Text("минут")
                            .foregroundStyle(.white)
                    }
                    VStack {
                        Text("51")
                            .font(.system(size: 40))
                            .foregroundStyle(.white)
                            .bold()
                        
                        Text("секунд")
                            .foregroundStyle(.white)
                    }
                }
                .overlay(RoundedRectangle(cornerRadius: 40)
                .stroke(Color.white, lineWidth: 4)
                .frame(width: 250, height: 100)
            )
            }
            .padding(.top, -220)
            VStack {
                Text("C12H22O11")
                    .font(.system(size: 18))
                    .foregroundStyle(.white)
                    .bold()
                    .padding(.bottom, 10)
            }
        }
    }
}

#Preview {
    TimerView()
}
