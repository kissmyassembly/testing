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
        static let space = 5 // space between label and associated segmented control
        static let width = 200
        static let widthConstraint = CGFloat(width)
        static let height = 20
        static let heightConstraint = CGFloat(height)
        
        static let mathTypeText = "Math Type"
        static let difficultyText = "Difficulty"
        static let gameModeText = "Game Mode"
    }
    
    struct Segment {
        // constraints and style
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
        static let bgColor = UIColor.white
        static let layerBGColor = UIColor.white.cgColor
        static let borderColor = UIColor.black.cgColor
        static let tintColor = UIColor.black
    }
}
