//
//  ModalView.swift
//  QuitSugar
//
//  Created by Roman on 14.04.24.
//

import SwiftUI

struct ModalView: View {
    
    @Binding var isShowing: Bool
    @State private var isDragging = false
    @State private var curHeight: CGFloat = 350
    @State private var phrase: String?
    
    let minHeight: CGFloat = 350
    let maxHeight: CGFloat = 700

    private let phrases: [String] = Motivation.allCases.map { $0.rawValue }
    
    func getPhrase() -> String {
        let phrase = phrases.randomElement()
        return phrase ?? ""
    }

    
    var body: some View {
        ZStack(alignment: .bottom) {
            if isShowing {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                        phrase = getPhrase()
                    }
                
                textView
                .transition(.move(edge: .bottom))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(Animation.easeIn(duration: 3.0), value: 0)
        .onAppear {
                    phrase = getPhrase()
                }
    }
    
    var textView: some View {
        return VStack {
            ZStack {
                Capsule()
                    .frame(width: 40, height: 6)
                    .frame(maxWidth: .infinity)
                    .background(Color.white.opacity(0.00001))
                    .gesture(dragGesture)
            }
            .frame(height: 40)
            ZStack {
                VStack {
                   Image(systemName: "lightbulb.fill")
                        .font(.system(size: 22))
                        .bold()
                    Text(phrase ?? "")
                        .font(.system(size: 18, weight: .regular))
                        .bold()
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(40)
                }
                .padding(.horizontal, 30)
            }
            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding(.bottom, 40)
        }
        .frame(height: curHeight)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(
            ZStack{
                UnevenRoundedRectangle(cornerRadii: .init(
                    topLeading: 40,
                    bottomLeading: 10,
                    bottomTrailing: 10,
                    topTrailing: 40))
            }
                .frame(width: 400)
                .foregroundStyle(.white)
        )
        .animation(isDragging ? nil : .easeInOut(duration: 0.45))
    }
    
    @State private var prevDragTranslation = CGSize.zero
    
    var dragGesture: some Gesture {
        DragGesture(minimumDistance: 0, coordinateSpace: .global)
            .onChanged { val in
                if !isDragging {
                    isDragging = true
                }
                let dragAmount = val.translation.height - prevDragTranslation.height
                if curHeight > maxHeight || curHeight < minHeight {
                    curHeight -= dragAmount / 6
                } else {
                    curHeight -= dragAmount
                }
                prevDragTranslation = val.translation
            }
            .onEnded { val  in
                prevDragTranslation = .zero
                isDragging = false
                if curHeight > maxHeight {
                    curHeight = maxHeight
                } else if curHeight < minHeight {
                    curHeight = minHeight
                }
            }
           
    }
}

#Preview {
    MotivationView()
}
