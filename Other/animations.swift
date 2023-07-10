//
//  animations.swift
//  TodoList
//
//  Created by Per Henrik Mork Viken on 10/07/2023.
//

import Foundation
import SwiftUI


struct ShakeEffect: GeometryEffect {
    var shakes: Int
    var amplitude: CGFloat = 10
    
    var animatableData: Int {
        get { shakes }
        set { shakes = newValue }
    }
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        let angle: CGFloat = shakes % 2 == 0 ? amplitude : -amplitude
        return ProjectionTransform(CGAffineTransform(rotationAngle: angle * .pi / 180))
    }
}
