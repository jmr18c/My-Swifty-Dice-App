//
//  ViewController.swift
//  My Swifty Dice App
//
//  Created by Justin Raitz on 10/13/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView: UIImageView!
    @IBOutlet var criticalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonGotPressed(){
        rollDice()
    }
    
    func rollDice(){
        //do cool stuff here
        print("WE ROLLIN' BRO!")
        
        let rolledNumber = Int.random(in: 1...20)
        
        let imageName = "d\(rolledNumber)"
        
        diceImageView.image = UIImage(named: imageName)
        
        if (imageName == "d1"){
            criticalLabel.text = "SUX 2 SUK!"
        } else if (imageName == "d20"){
            criticalLabel.text = "YOU ARE WINNER!"
        } else {
            criticalLabel.text = ""
        }
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }

}

