//
//  FORTESTS!.swift
//  QuitSugar
//
//  Created by Roman on 13.04.24.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var text: String
}

struct SwipeCardsView: View {
    @State private var cards = [
        Card(text: "Card 1"),
        Card(text: "Card 2"),
        Card(text: "Card 3")
    ]
    
    @GestureState private var translation: CGFloat = 0
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                ForEach(cards) { card in
                    CardView(card: card)
                        .offset(x: 0, y: self.translation)
                        .gesture(
                            DragGesture()
                                .updating(self.$translation) { value, state, _ in
                                    state = value.translation.height
                                }
                                .onEnded { value in
                                    if value.translation.height < -100 {
                                        self.removeCard()
                                    }
                                }
                        )
                }
            }
            Spacer()
        }
    }
    
    func removeCard() {
        cards.removeFirst()
    }
}

struct CardView: View {
    var card: Card
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.white)
            .frame(width: 300, height: 200)
            .overlay(
                Text(card.text)
            )
            .padding()
            .shadow(radius: 5)
    }
}

struct SwipeCardsView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeCardsView()
    }
}
#Preview {
    SwipeCardsView()
}
