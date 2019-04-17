//
//  ButtonExtensions.swift
//  testing MessagesExtension
//
//  Created by Brian Casipit on 4/10/19.
//  Copyright © 2019 Gouri Jamakhandi. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func createMathTypeButton(frame: CGRect) {
        // Generated Swift code for Math Type Button
        
        // TODO
        // - figure out (or not) setup for the rest of the button
        
        // construct the
        let newButton = UIButton()
        newButton.frame = frame
        newButton.backgroundColor = .white // color not visible anywhere?
        //self.view = view
        
        // 592
        
        newButton.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        newButton.layer.cornerRadius = 30
        newButton.layer.borderWidth = 1
        newButton.layer.borderColor = UIColor(red: 0.18, green: 0.18, blue: 0.18, alpha: 1).cgColor
        
        //let parent = self.view!
        self.addSubview(newButton)
        
        newButton.translatesAutoresizingMaskIntoConstraints = false
        newButton.widthAnchor.constraint(equalToConstant: 111).isActive = true
        newButton.heightAnchor.constraint(equalToConstant: 111).isActive = true
        newButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 64).isActive = true
        //view.topAnchor.constraint(equalTo: self.topAnchor, constant: 1830).isActive = true
    }
    
}
