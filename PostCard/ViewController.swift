//
//  ViewController.swift
//  PostCard
//
//  Created by Ben George on 9/25/14.
//  Copyright (c) 2014 Ben George. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden=false
        nameLabel.hidden=false
        
        messageLabel.text=enterMessageTextField.text
        messageLabel.textColor=UIColor.redColor()
        
        nameLabel.text=enterNameTextField.text
        nameLabel.textColor=UIColor.blueColor()
        
        enterNameTextField.text=""
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text=""
        enterMessageTextField.resignFirstResponder()
        
        messageButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }
}

