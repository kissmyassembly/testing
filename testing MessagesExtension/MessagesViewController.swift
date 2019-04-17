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
    
    var mathLabel = UILabel()
    var difficultyLabel = UILabel()
    var gameModeLabel = UILabel()
    
    //var eatFoodButt = UIButton()
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
        // Do any additional setup after loading the view.
        
        // storyboard button into a reusable variable
        //eatFoodButt = eatFoodButton
        self.eatFoodButton.isHidden = true
        self.label.isHidden = true
        
        // label constants
        let labelSpace = 5 // space between label and associated segmented control
        let labelWidth = 200
        let labelHeight = 20
        
        // segment constants
        let segmentSpace = 40 // space between segments
        let segmentWidth = 200
        let segmentHeight = 30
        let mathSegmentY = segmentSpace
        let difficultySegmentY = mathSegmentY + segmentHeight + segmentSpace
        let gameModeSegmentY = difficultySegmentY + segmentHeight + segmentSpace
        
        // MATH SEGMENTED CONTROL //
        mathSegment = UISegmentedControl(
            frame: CGRect(
                x: 0,
                y: mathSegmentY,
                width: segmentWidth,
                height: segmentHeight
            )
        )
        mathSegment.backgroundColor = .white
        
        mathSegment.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        mathSegment.layer.cornerRadius = 10
        mathSegment.layer.borderWidth = 1
        mathSegment.layer.borderColor = UIColor(red: 0.18, green: 0.18, blue: 0.18, alpha: 1).cgColor
        
        mathSegment.translatesAutoresizingMaskIntoConstraints = true
        mathSegment.widthAnchor.constraint(equalToConstant: CGFloat(segmentWidth)).isActive = true
        mathSegment.heightAnchor.constraint(equalToConstant: CGFloat(segmentHeight)).isActive = true
        mathSegment.center.x = self.view.center.x
        
        mathSegment.insertSegment(withTitle: "+", at: 0, animated: true)
        mathSegment.insertSegment(withTitle: "-", at: 1, animated: true)
        mathSegment.insertSegment(withTitle: "*", at: 2, animated: true)
        mathSegment.insertSegment(withTitle: "/", at: 3, animated: true)
        self.view.addSubview(mathSegment)
        
        // DIFFICULTY SEGMENTED CONTROL //
        difficultySegment = UISegmentedControl(
            frame: CGRect(
                x: 0,
                y: difficultySegmentY,
                width: segmentWidth,
                height: segmentHeight
            )
        )
        print("\n\n" + "mathSegment.frame.origin.x: ")// test print
        print(mathSegment.frame.origin.x)
        print("\n")
        
        difficultySegment.backgroundColor = .white
        
        difficultySegment.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        difficultySegment.layer.cornerRadius = 10
        difficultySegment.layer.borderWidth = 1
        difficultySegment.layer.borderColor = UIColor(red: 0.18, green: 0.18, blue: 0.18, alpha: 1).cgColor
        
        difficultySegment.translatesAutoresizingMaskIntoConstraints = true
        difficultySegment.widthAnchor.constraint(equalToConstant: CGFloat(segmentWidth)).isActive = true
        difficultySegment.heightAnchor.constraint(equalToConstant: CGFloat(segmentHeight)).isActive = true
        difficultySegment.center.x = self.view.center.x
        
        difficultySegment.insertSegment(withTitle: "Easy", at: 0, animated: true)
        difficultySegment.insertSegment(withTitle: "Normal", at: 1, animated: true)
        difficultySegment.insertSegment(withTitle: "Hard", at: 2, animated: true)
        self.view.addSubview(difficultySegment)
        
        // GAMEMODE SEGMENTED CONTROL //
        gameModeSegment = UISegmentedControl(
            frame: CGRect(
                x: 0,
                y: gameModeSegmentY,
                width: segmentWidth,
                height: segmentHeight
            )
        )
        gameModeSegment.backgroundColor = .white
        
        gameModeSegment.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        gameModeSegment.layer.cornerRadius = 10
        gameModeSegment.layer.borderWidth = 1
        gameModeSegment.layer.borderColor = UIColor(red: 0.18, green: 0.18, blue: 0.18, alpha: 1).cgColor
        
        gameModeSegment.translatesAutoresizingMaskIntoConstraints = true
        gameModeSegment.widthAnchor.constraint(equalToConstant: CGFloat(segmentWidth)).isActive = true
        gameModeSegment.heightAnchor.constraint(equalToConstant: CGFloat(segmentHeight)).isActive = true
        gameModeSegment.center.x = self.view.center.x
        
        gameModeSegment.insertSegment(withTitle: "Timed", at: 0, animated: true)
        gameModeSegment.insertSegment(withTitle: "Untimed", at: 1, animated: true)
        self.view.addSubview(gameModeSegment)
        
        // MATH LABEL //
        mathLabel = UILabel(
            frame: CGRect(
                x: 0,
                y: mathSegmentY - labelSpace - labelHeight,
                width: labelWidth,
                height: labelHeight
            )
        )
        mathLabel.text = "Math Type"
        mathLabel.translatesAutoresizingMaskIntoConstraints = true
        mathLabel.widthAnchor.constraint(equalToConstant: CGFloat(labelWidth)).isActive = true
        mathLabel.heightAnchor.constraint(equalToConstant: CGFloat(labelHeight)).isActive = true
        mathLabel.center.x = self.view.center.x
        self.view.addSubview(mathLabel)
        
        // DIFFICULTY LABEL //
        difficultyLabel = UILabel(
            frame: CGRect(
                x: 0,
                y: difficultySegmentY - labelSpace - labelHeight,
                width: labelWidth,
                height: labelHeight
            )
        )
        difficultyLabel.text = "Difficulty"
        difficultyLabel.translatesAutoresizingMaskIntoConstraints = true
        difficultyLabel.widthAnchor.constraint(equalToConstant: CGFloat(labelWidth)).isActive = true
        difficultyLabel.heightAnchor.constraint(equalToConstant: CGFloat(labelHeight)).isActive = true
        difficultyLabel.center.x = self.view.center.x
        self.view.addSubview(difficultyLabel)
        
        // GAME MODE LABEL //
        gameModeLabel = UILabel(
            frame: CGRect(
                x: 0,
                y: gameModeSegmentY - labelSpace - labelHeight,
                width: labelWidth,
                height: labelHeight
            )
        )
        gameModeLabel.text = "Game Mode"
        gameModeLabel.translatesAutoresizingMaskIntoConstraints = true
        gameModeLabel.widthAnchor.constraint(equalToConstant: CGFloat(labelWidth)).isActive = true
        gameModeLabel.heightAnchor.constraint(equalToConstant: CGFloat(labelHeight)).isActive = true
        gameModeLabel.center.x = self.view.center.x
        self.view.addSubview(gameModeLabel)
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
        
        // Use this method to prepare for the change in presentation style.
        if (presentationStyle == .expanded) {
            //self.eatFoodButt.removeFromSuperview()
            //self.view.addSubview(self.mathSegment)
            
            // TODO: change postion of components for expanded presentation
        }
        if (presentationStyle == .compact) {
            //self.view.addSubview(self.eatFoodButt)
            //self.mathSegment.removeFromSuperview()
            
            // TODO: change postion of components for compact presentation
        }
    }
    
    override func didTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        // Called after the extension transitions to a new presentation style.
        
        // Use this method to finalize any behaviors associated with the change in presentation style.
    }
    
}
