//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Nickelfox on 02/01/24.
//

import Foundation
import SwiftUI

struct GradientButtonStyle : ButtonStyle{
   
    func makeBody(configuration: Configuration) -> some View {
      configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                configuration.isPressed ?
                LinearGradient(
                colors: [.CustomGrayMedium,.CustomGrayLight],
                startPoint: .top,
                endPoint: .bottom)
                :
                LinearGradient(
                colors: [.CustomGrayLight,.CustomGrayMedium],
                startPoint: .top,
                endPoint: .bottom))
            .cornerRadius(40)
    }
    
    
}
