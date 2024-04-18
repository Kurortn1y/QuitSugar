//
//  MotivationView.swift
//  QuitSugar
//
//  Created by Roman on 28.03.24.
//

import SwiftUI

struct MotivationView: View {
    
    @State private var showModal = false
    
    var body: some View {
        
        ZStack {
            Image("sugar3")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            Button(action: {showModal.toggle()}) {
                Text("Хочу сладкого")
                    .font(.system(size: 40, weight: .heavy, design: .rounded))
                    .foregroundStyle(.white)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 40)
                    .background(Color.airForse.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius:20))
            }
            .offset(y: -100)
            
            ModalView(isShowing: $showModal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .statusBar(hidden: true)
    }
}
#Preview {
    MotivationView()
}



//ForEach(Motivation.allCases, id: \.self) { motivation in
//    CardView(motivation: motivation.rawValue)
//}


//ZStack {
//    Color.airForse
//        .ignoresSafeArea()
//    TabView {
//        ForEach(Motivation.allCases, id: \.self) { motivation in
//            ZStack{
//                Color.white
//                    .opacity(0.6)
//                VStack(spacing: 40) {
//                    Image(systemName: "lightbulb.max.fill")
//                    Text(motivation.rawValue)
//                }
//            }
//        }
//    }
//    .tabViewStyle(.page)
//    .cornerRadius(10)
//    .padding(20)
//    .frame(width: 400,height: 350)
//}
