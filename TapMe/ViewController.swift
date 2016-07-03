//
//  ViewController.swift
//  TapMe
//
//  Created by Shrijan Aryal on 6/30/16.
//  Copyright © 2016 Shrijan Aryal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxclicks: Int = 0
    var currentclick: Int = 0
    
    @IBOutlet weak var uilogo: UIImageView!
    @IBOutlet weak var uitexttimes: UITextField!
    @IBOutlet weak var playbutton: UIButton!
    
    @IBOutlet weak var coingameplay: UIButton!
    @IBOutlet weak var counterlabel: UILabel!
    
    @IBAction func clickplaybutton(sender: UIButton){
        
        if (uitexttimes.text != nil) && (uitexttimes.text != ""){
        uilogo.hidden = true
        uitexttimes.hidden = true
        playbutton.hidden = true
        coingameplay.hidden = false
        counterlabel.hidden = false
        
        maxclicks = Int(uitexttimes.text!)!
            
            
            currentclick = 0
        
        counterlabel.text = "\(currentclick) Taps"
            
        }
    
    }
    
    @IBAction func clickcoinbutton(sender: UIButton){
        currentclick += 1
        counterlabel.text = "\(currentclick) Taps"
        if currentclick >= maxclicks {
            uilogo.hidden = false
            uitexttimes.hidden = false
            playbutton.hidden = false
            coingameplay.hidden = true
            counterlabel.hidden = true

        
        }
        
        else {
            counterlabel.text = "\(currentclick) Taps"

        }
        

        }
    
    
    
    
    
}

