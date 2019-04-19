//
//  ButtonExtensions.swift
//  testing MessagesExtension
//
//  Created by Brian Casipit on 4/10/19.
//  Copyright © 2019 Gouri Jamakhandi. All rights reserved.
//

import Foundation
import UIKit

extension UISegmentedControl {
    
    static func mathTypeSegment() -> UISegmentedControl {
        let mathSegment = UISegmentedControl(
            frame: CGRect(
                x: 0,
                y: MenuConstants.Segment.mathY,
                width: MenuConstants.Segment.width,
                height: MenuConstants.Segment.height
            )
        )
        
        mathSegment.backgroundColor = MenuConstants.Segment.bgColor
        mathSegment.layer.backgroundColor = MenuConstants.Segment.layerBGColor
        mathSegment.layer.cornerRadius = MenuConstants.Segment.cornerRadius
        mathSegment.layer.borderWidth = MenuConstants.Segment.borderWidth
        mathSegment.layer.borderColor = MenuConstants.Segment.borderColor
        mathSegment.tintColor = MenuConstants.Segment.tintColor
        mathSegment.layer.masksToBounds = true
        
        mathSegment.insertSegment(withTitle: "+", at: 0, animated: true)
        mathSegment.insertSegment(withTitle: "-", at: 1, animated: true)
        mathSegment.insertSegment(withTitle: "*", at: 2, animated: true)
        mathSegment.insertSegment(withTitle: "/", at: 3, animated: true)
        
        return mathSegment
    }
    
    static func difficultySegment() -> UISegmentedControl {
        let difficultySegment = UISegmentedControl(
            frame: CGRect(
                x: 0,
                y: MenuConstants.Segment.difficultyY,
                width: MenuConstants.Segment.width,
                height: MenuConstants.Segment.height
            )
        )
        
        difficultySegment.backgroundColor = MenuConstants.Segment.bgColor
        difficultySegment.layer.backgroundColor = MenuConstants.Segment.layerBGColor
        difficultySegment.layer.cornerRadius = MenuConstants.Segment.cornerRadius
        difficultySegment.layer.borderWidth = MenuConstants.Segment.borderWidth
        difficultySegment.layer.borderColor = MenuConstants.Segment.borderColor
        difficultySegment.tintColor = MenuConstants.Segment.tintColor
        difficultySegment.translatesAutoresizingMaskIntoConstraints = true
        difficultySegment.layer.masksToBounds = true
        
        difficultySegment.insertSegment(withTitle: "Easy", at: 0, animated: true)
        difficultySegment.insertSegment(withTitle: "Normal", at: 1, animated: true)
        difficultySegment.insertSegment(withTitle: "Hard", at: 2, animated: true)
        
        return difficultySegment
    }
    
    static func gameModeSegment() -> UISegmentedControl{
        let gameModeSegment = UISegmentedControl(
            frame: CGRect(
                x: 0,
                y: MenuConstants.Segment.gameModeY,
                width: MenuConstants.Segment.width,
                height: MenuConstants.Segment.height
            )
        )
        
        gameModeSegment.backgroundColor = MenuConstants.Segment.bgColor
        gameModeSegment.layer.backgroundColor = MenuConstants.Segment.layerBGColor
        gameModeSegment.layer.cornerRadius = MenuConstants.Segment.cornerRadius
        gameModeSegment.layer.borderWidth = MenuConstants.Segment.borderWidth
        gameModeSegment.layer.borderColor = MenuConstants.Segment.borderColor
        gameModeSegment.tintColor = MenuConstants.Segment.tintColor
        gameModeSegment.translatesAutoresizingMaskIntoConstraints = true
        gameModeSegment.layer.masksToBounds = true
        
        gameModeSegment.insertSegment(withTitle: "Timed", at: 0, animated: true)
        gameModeSegment.insertSegment(withTitle: "Untimed", at: 1, animated: true)
        
        return gameModeSegment
    }
    
}

extension UILabel {
    
    static func mathTypeLabel() -> UILabel {
        let newLabel = UILabel(
            frame: CGRect(
                x: 0,
                y: MenuConstants.Segment.mathY - MenuConstants.Label.space - MenuConstants.Label.height,
                width: MenuConstants.Label.width,
                height: MenuConstants.Label.height
            )
        )
        
        newLabel.text = MenuConstants.Label.mathTypeText
        
        return newLabel
    }
    
    static func difficultyLabel() -> UILabel {
        let newLabel = UILabel(
            frame: CGRect(
                x: 0,
                y: MenuConstants.Segment.difficultyY - MenuConstants.Label.space - MenuConstants.Label.height,
                width: MenuConstants.Label.width,
                height: MenuConstants.Label.height
            )
        )
        
        newLabel.text = MenuConstants.Label.difficultyText
        
        return newLabel
    }
    
    static func gameModeLabel() -> UILabel {
        let newLabel = UILabel(
            frame: CGRect(
                x: 0,
                y: MenuConstants.Segment.gameModeY - MenuConstants.Label.space - MenuConstants.Label.height,
                width: MenuConstants.Label.width,
                height: MenuConstants.Label.height
            )
        )
        
        newLabel.text = MenuConstants.Label.gameModeText
        
        return newLabel
    }
    
}
