//
//  SwipeAction.swift
//  LazySwipeActions
//
//  Created by Gianluca Orpello on 07/10/24.
//

import SwiftUI

/// SwipeAction Model
public struct SwipeAction: Identifiable {
    private(set) public var id: UUID = .init()
    var tint: Color
    var icon: String
    var iconFont: Font = .title
    var iconTint: Color = .white
    var isEnabled: Bool = true
    var action: () -> ()
}

@resultBuilder
struct ActionBuilder {
    static func buildBlock(_ components: SwipeAction...) -> [SwipeAction] {
        return components
    }
}
