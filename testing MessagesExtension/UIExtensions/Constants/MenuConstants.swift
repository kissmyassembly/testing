//
//  MenuConstants.swift
//  testing MessagesExtension
//
//  Created by Brian Casipit on 4/19/19.
//  Copyright © 2019 Gouri Jamakhandi. All rights reserved.
//

import Foundation
import UIKit

struct MenuConstants {
    
    struct Label {
        
        // dimensions, constraints, and style
        static let space = 5 // space between label and associated segmented control
        static let width = 200
        static let widthConstraint = CGFloat(width)
        static let height = 20
        static let heightConstraint = CGFloat(height)
        
        // label text
        static let mathTypeText = "Math Type"
        static let difficultyText = "Difficulty"
        static let gameModeText = "Game Mode"
    }
    
    struct Segment {
        // dimensions, constraints, and style
        static let space = 40 // space between segments
        static let width = 200
        static let widthConstraint = CGFloat(width)
        static let height = 30
        static let heightConstraint = CGFloat(height)
        
        static let cornerRadius = CGFloat(10)
        static let borderWidth = CGFloat(1)
        
        static let mathY = space
        static let difficultyY = mathY + height + space
        static let gameModeY = difficultyY + height + space
        
        // color
        static let bgColor = UIColor.white // unsure where this shows
        static let layerBGColor = UIColor.white.cgColor // unselected segments
        static let borderColor = UIColor.black.cgColor // outer border
        static let tintColor = UIColor.black // unselected segment text, selection bg, dividers
    }
}
