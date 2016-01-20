//
//  ViewController.swift
//  Tapper
//
//  Created by Bat Computer on 1/8/16.
//  Copyright © 2016 HardSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxTaps = 0
    var currentTaps = 0
    


    @IBOutlet var tapperLogo: UIImageView!
    
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var playButton: UIButton!
    
    @IBOutlet var tapButton: UIButton!
    
    @IBOutlet var tapLabel: UILabel!
    
    @IBAction func playPressed(sender: AnyObject) {
        
        if textField.text != nil && textField.text != "" {
            
            tapperLogo.hidden = true
            textField.hidden = true
            playButton.hidden = true
            
            tapButton.hidden = false
            tapLabel.hidden = false
            
            maxTaps = Int(textField.text!)!
            currentTaps = 0
            
            updateTapLabel()
            
        }
        
    }
    
    @IBAction func tapPressed(sender: AnyObject) {
        
        currentTaps++
        updateTapLabel()
        
        if gameOver() {
            
            restartGame()
            
        }
    }
    
    
    func updateTapLabel() {
        
        tapLabel.text = "\(currentTaps) Taps"
    }
    
    func gameOver() -> Bool {
        
        if currentTaps >= maxTaps {
            
            return true
            
        } else {
            
            return false
            
        }
        
    }
    
    func restartGame() {
        
        maxTaps = 0
        textField.text = ""
        
        tapperLogo.hidden = false
        textField.hidden = false
        playButton.hidden = false
        
        tapButton.hidden = true
        tapLabel.hidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

