//
//  CustomTransition.swift
//  LazySwipeActions
//
//  Created by Gianluca Orpello on 07/10/24.
//

import SwiftUI

/// Custom Transition
struct CustomTransition: Transition {
    func body(content: Content, phase: TransitionPhase) -> some View {
        content
            .mask {
                GeometryReader {
                    let size = $0.size
                    
                    Rectangle()
                        .offset(y: phase == .identity ? 0 : -size.height)
                }
                .containerRelativeFrame(.horizontal)
                .swipeActions {
                    Text("")
                }
            }
    }
}
