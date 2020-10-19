//
//  ViewController.swift
//  My Swifty Dice App
//
//  Created by Justin Raitz on 10/13/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView: UIImageView!
    @IBOutlet var criticalLabel: UILabel!
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let sound = Bundle
    }

    @IBAction func buttonGotPressed(){
        rollDice()
    }
    
    func rollDice(){
        //do cool stuff here
        print("WE ROLLIN' BRO!")
        
        let rolledNumber = Int.random(in: 1...20)
        
        let imageName = "roll_\(rolledNumber)"
        
        diceImageView.image = UIImage(named: imageName)
        
        if (imageName == "roll_1"){
            criticalLabel.text = "SUX 2 SUK like Xichigan!"
        } else if (imageName == "roll_20"){
            criticalLabel.text = "YOU ARE WINNER like The Ohio State University!"
        } else {
            criticalLabel.text = ""
        }
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }

}

