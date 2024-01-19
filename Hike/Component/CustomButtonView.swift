//
//  CustomButtonView.swift
//  Hike
//
//  Created by Nickelfox on 02/01/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(LinearGradient(
                    colors: [.white,.CustomGreenLight,.CustomGreenMedium],
                    startPoint: .top,
                    endPoint: .bottom))
            
            Circle()
                .stroke(LinearGradient(
                    colors: [.CustomGrayLight,.CustomGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom),lineWidth: 4)
            
         Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(
                    colors: [.CustomGrayLight,.CustomGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom))
        }
        .frame(width: 58,height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
