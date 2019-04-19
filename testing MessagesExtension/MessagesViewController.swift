//
//  MessagesViewController.swift
//  iMessage Ext
//
//  Created by Gouri Jamakhandi on 3/11/19.
//  Copyright © 2019 Gouri Jamakhandi. All rights reserved.
//

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    
    @IBOutlet weak var eatFoodButton: UIButton!
    @IBOutlet weak var label: UILabel!
    
    // MAKE COMPONENTS REACCESSIBLE
    var mathLabel = UILabel()
    var difficultyLabel = UILabel()
    var gameModeLabel = UILabel()
    var mathSegment = UISegmentedControl()
    var difficultySegment = UISegmentedControl()
    var gameModeSegment = UISegmentedControl()
    
//    @IBAction func button(_ sender: Any)
//    {
//        label.text = "BON APPETIT"
//
//
//        //Appearance of message
//        let layout = MSMessageTemplateLayout()
//        layout.caption = "BON APPETIT!"
//        layout.image = UIImage(named: "chefkiss.jpg")
//
//        let message = MSMessage()
//        message.layout = layout
//        message.shouldExpire = true
//
//        activeConversation?.insert(message
//            , completionHandler: nil)
//
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TEMP: hide these components in view
        self.eatFoodButton.isHidden = true
        self.label.isHidden = true
        
        // TODO
        // - modify constraints here
        // - modify styling in SegmentExtensions + MenuConstants
        
        // MATH TYPE LABEL
        mathLabel = UILabel.mathTypeLabel()
        // constraints
        mathLabel.translatesAutoresizingMaskIntoConstraints = true
        mathLabel.widthAnchor.constraint(equalToConstant: MenuConstants.Label.widthConstraint).isActive = true
        mathLabel.heightAnchor.constraint(equalToConstant: MenuConstants.Label.heightConstraint).isActive = true
        mathLabel.center.x = self.view.center.x
        
        // MATH TYPE SEGMENTED CONTROL
        self.mathSegment = UISegmentedControl.mathTypeSegment()
        // constraints
        mathSegment.translatesAutoresizingMaskIntoConstraints = true
        mathSegment.widthAnchor.constraint(equalToConstant: MenuConstants.Segment.widthConstraint).isActive = true
        mathSegment.heightAnchor.constraint(equalToConstant: MenuConstants.Segment.heightConstraint).isActive = true
        mathSegment.center.x = self.view.center.x
        
        // DIFFICULTY LABEL
        difficultyLabel = UILabel.difficultyLabel()
        // constraints
        difficultyLabel.translatesAutoresizingMaskIntoConstraints = true
        difficultyLabel.widthAnchor.constraint(equalToConstant: MenuConstants.Label.widthConstraint).isActive = true
        difficultyLabel.heightAnchor.constraint(equalToConstant: MenuConstants.Label.heightConstraint).isActive = true
        difficultyLabel.center.x = self.view.center.x
        
        // DIFFICULTY SEGMENTED CONTROL
        self.difficultySegment = UISegmentedControl.difficultySegment()
        // constraints
        difficultySegment.translatesAutoresizingMaskIntoConstraints = true
        difficultySegment.widthAnchor.constraint(equalToConstant: MenuConstants.Segment.widthConstraint).isActive = true
        difficultySegment.heightAnchor.constraint(equalToConstant: MenuConstants.Segment.heightConstraint).isActive = true
        difficultySegment.center.x = self.view.center.x
        
        // GAME MODE LABEL
        gameModeLabel = UILabel.gameModeLabel()
        // constraints
        gameModeLabel.translatesAutoresizingMaskIntoConstraints = true
        gameModeLabel.widthAnchor.constraint(equalToConstant: MenuConstants.Label.widthConstraint).isActive = true
        gameModeLabel.heightAnchor.constraint(equalToConstant: MenuConstants.Label.heightConstraint).isActive = true
        gameModeLabel.center.x = self.view.center.x
        
        // GAME MODE SEGMENTED CONTROL
        self.gameModeSegment = UISegmentedControl.gameModeSegment()
        // constraints
        gameModeSegment.translatesAutoresizingMaskIntoConstraints = true
        gameModeSegment.widthAnchor.constraint(equalToConstant: MenuConstants.Segment.widthConstraint).isActive = true
        gameModeSegment.heightAnchor.constraint(equalToConstant: MenuConstants.Segment.heightConstraint).isActive = true
        gameModeSegment.center.x = self.view.center.x
        
        // ADD ALL COMPONENTS TO VIEW
        self.view.addSubview(mathLabel)
        self.view.addSubview(mathSegment)
        self.view.addSubview(difficultyLabel)
        self.view.addSubview(difficultySegment)
        self.view.addSubview(gameModeLabel)
        self.view.addSubview(gameModeSegment)
    }
    
    // MARK: - Conversation Handling
    
    override func willBecomeActive(with conversation: MSConversation) {
        // Called when the extension is about to move from the inactive to active state.
        // This will happen when the extension is about to present UI.
        
        // Use this method to configure the extension and restore previously stored state.
    }
    
    override func didResignActive(with conversation: MSConversation) {
        // Called when the extension is about to move from the active to inactive state.
        // This will happen when the user dissmises the extension, changes to a different
        // conversation or quits Messages.
        
        // Use this method to release shared resources, save user data, invalidate timers,
        // and store enough state information to restore your extension to its current state
        // in case it is terminated later.
    }
    
    override func didReceive(_ message: MSMessage, conversation: MSConversation) {
        // Called when a message arrives that was generated by another instance of this
        // extension on a remote device.
        
        // Use this method to trigger UI updates in response to the message.
    }
    
    override func didStartSending(_ message: MSMessage, conversation: MSConversation) {
        // Called when the user taps the send button.
    }
    
    override func didCancelSending(_ message: MSMessage, conversation: MSConversation) {
        // Called when the user deletes the message without sending it.
        
        // Use this to clean up state related to the deleted message.
    }
    
    override func willTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        // Called before the extension transitions to a new presentation style.
        
        // USEFUL METHODS (IF NEEDED)
        // nameOfComponent.removeFromSuperView()
        // view.addSubView(nameOfComponent)
        
        // Use this method to prepare for the change in presentation style.
        if (presentationStyle == .expanded) {
            // TODO: change postion of components for expanded presentation
            
        }
        if (presentationStyle == .compact) {
            // TODO: change postion of components for compact presentation
            
        }
    }
    
    override func didTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        // Called after the extension transitions to a new presentation style.
        
        // Use this method to finalize any behaviors associated with the change in presentation style.
    }
    
}
