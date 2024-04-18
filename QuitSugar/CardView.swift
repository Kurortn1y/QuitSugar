//
//  CardView.swift
//  QuitSugar
//
//  Created by Roman on 13.04.24.
//

import SwiftUI

struct CardView: View {
    
    @State private var offset = CGSize.zero
    @State private var color: Color = .white
    
    @State var motivation: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 320, height: 420)
                .border(.white , width: 6.0)
                .cornerRadius(4)
                .foregroundColor(color.opacity(1))
                .shadow(radius: 4)
            VStack {
                Image(systemName: "lightbulb.max.fill")
                Text(motivation)
                    .foregroundStyle(.black)
                    .bold()
                    .multilineTextAlignment(.center) // Центрируем текст
                    .padding()
            }
            .padding()
            .alignmentGuide(.top) { _ in 420 }
            .alignmentGuide(.leading) { _ in 0 }
        }
        .offset(x: offset.width, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    offset = gesture.translation
                }
                .onEnded{ _ in
                    withAnimation {
                        swipeCard(width: offset.width)
                    }
                    
                }
        )
    }
    
    func swipeCard(width: CGFloat) {
        switch width {
        case -800...(-150):
            print("motivation was readed")
            offset = CGSize(width: -800, height: 0)
        case 150...800:
            print("est")
            offset = CGSize(width: 800, height: 0)
        default:
            offset = .zero
        }
        
    }
}

#Preview {
    CardView(motivation: "Избыток сахара связан с развитием ожирения.")
}
