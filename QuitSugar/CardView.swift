//
//  CardView.swift
//  QuitSugar
//
//  Created by Roman on 13.04.24.
//

import SwiftUI


struct CardView: View {
 
    var body: some View {
        NavigationStack{
            ZStack {
                Color.kaif
                    .ignoresSafeArea()
                VStack(spacing: 35) {
                    Text("Достижения")
                        .font(.system(size: 40, weight: .heavy, design: .rounded))
                        .foregroundStyle(.white)
                    GeometryReader {
                        let size = $0.size
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: 0) {
                                ForEach(items) { item in
                                    makeCardView(item)
                                    .padding(.horizontal, 65)
                                    .frame(width: size.width)
                                    .visualEffect { content, geometryProxy in
                                        content
                                            .scaleEffect(scale(geometryProxy, scale: 0.1), anchor: .trailing)
                                            .rotationEffect(rotation(geometryProxy,rotation: 5 ))
                                            .offset(x: minX(geometryProxy))
                                            .offset(x: excessMinX(geometryProxy, offset: 8 ))
                                    }
                                    .zIndex(items.zIndex(item))
                                }
                            }
                            .padding(.vertical, 15)
                        }
                        .scrollTargetBehavior(.paging)
                        .scrollIndicators(.hidden)
                    }
                    .frame(height: 430)
                    Spacer()
                }
                VStack {
                    Text("Текущий Уровень:")
                        .font(.system(size: 30, weight: .heavy, design: .rounded))
                        .foregroundStyle(.white)
                    Text("Неделя начало пути")
                        .font(.system(size: 20, weight: .heavy ,design: .serif))
                        .padding(1)
                }
                    .padding(.top, 470)
            }
        }
    }
    
    //.font(.system(size: 20, weight: .medium ,design: .serif)
    /// CardView
    @ViewBuilder
    private func makeCardView(_ item: Item) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(item.color.gradient)
            
            VStack(spacing: 15) {
                Text(item.textTitle ?? "")
                    .font(.system(size: 20,weight: .bold, design: .serif))
                    .bold()
                    .padding(5)
                Text(item.text ?? "")
                    .font(.system(size: 14,weight: .semibold, design: .serif))
                    .padding(10)

            }
        }
    }
    /// Cards Animation
    func minX(_ proxy: GeometryProxy) -> CGFloat {
        let minX = proxy.frame(in: .scrollView(axis: .horizontal)).minX
        return minX < 0 ? 0 : -minX
    }
    
    func progress(_ proxy: GeometryProxy, limit: CGFloat = 2) -> CGFloat {
        let maxX = proxy.frame(in: .scrollView(axis: .horizontal)).maxX
        let width = proxy.bounds(of: .scrollView(axis: .horizontal))? .width ?? 0
        /// Converting into progress
        let progress = maxX / width - 1.0
        let cappedProgress = min(progress, limit)
        return cappedProgress
    }
    func scale(_ proxy: GeometryProxy, scale: CGFloat = 0.1) -> CGFloat {
        let progress = progress(proxy, limit: 3)
        return 1 - (progress * scale)
    }
    func excessMinX(_ proxy: GeometryProxy, offset: CGFloat = 10) -> CGFloat {
        let progress = progress(proxy)
        return progress * offset
    }
    
    func rotation(_ proxy: GeometryProxy, rotation: CGFloat = 5) -> Angle {
        let progress = progress(proxy)
        return .init(degrees: progress * rotation)
    }
}

#Preview {
    CardView()
}
