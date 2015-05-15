//
//  ViewController.swift
//  BitFountain postcard
//
//  Created by Jesper Madsen on 15/05/15.
//  Copyright (c) 2015 Jesper Madsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        // Set name text
        nameLabel.text = "Hello " + enterNameTextField.text + "!";
        nameLabel.textColor = UIColor.blueColor();
        nameLabel.hidden = false;
        enterNameTextField.text = "";
        
        
        // Set message text
        messageLabel.hidden = false;
        messageLabel.textColor = UIColor.redColor();
        messageLabel.text = enterMessageTextField.text;
        enterMessageTextField.text = "";
        
        //Gem keyboard
        
        enterMessageTextField.resignFirstResponder();

        
        sendMailButton.setTitle("Mail sent!", forState: UIControlState.Normal);

    }
   
    
    

}

