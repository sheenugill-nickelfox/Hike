//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Nickelfox on 02/01/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack{
            
      //  Mark: 1 - Depth
            
            Color.CustomGreenDark
                .cornerRadius(40)
                .offset(y:12)
            
      // Mark: 2 - Light
            Color.CustomGreenLight
                .cornerRadius(40)
                .offset(y:3).opacity(0.85)
            
     // Mark: 3 -  Surface
            LinearGradient(
                colors: [.CustomGreenLight,.CustomGreenMedium],
                startPoint: .top,
                endPoint: .bottom)
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
