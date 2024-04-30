//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Alisson Inácio on 25/04/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                //Conditional Statement with Nil Coalescing
                //Condiition ? A : B
                configuration.isPressed ?
                //A: When User Pressed Button
                LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
                :
                //B: When User Button is not pressed
                
                
                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
