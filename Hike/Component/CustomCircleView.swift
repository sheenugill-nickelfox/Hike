//
//  CustomCircleView.swift
//  Hike
//
//  Created by Nickelfox on 03/01/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State var isAnimated:Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.CustomIndigoMedium,
                                 .CustomSalmonLight],
                        startPoint: isAnimated ? .topLeading : .bottomLeading,
                        endPoint: isAnimated ? .bottomTrailing : .topTrailing)
                )
                .onAppear{
                    withAnimation(.linear(duration:3.0).repeatForever(autoreverses: true)){
                        isAnimated.toggle()
                    }
                }
            MotionAnimationView()
        }// ZStack
        .frame(width: 256,height: 256)
    }
}

#Preview {
    CustomCircleView()
}
