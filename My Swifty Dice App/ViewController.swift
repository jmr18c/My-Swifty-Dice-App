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
    
    var audioPlayerRoll = AVAudioPlayer()
    var audioPlayerWin = AVAudioPlayer()
    var audioPlayerLoss = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonGotPressed(){
        rollDice()
    }
    
    // Plays sound for each roll
    func playRollDice() {
        let asset = NSDataAsset(name: "roll")!
        
        do {
            audioPlayerRoll = try AVAudioPlayer(data: asset.data, fileTypeHint: "mp3")
            audioPlayerRoll.play()
        }
        catch {
            print(error)
        }
    }
    
    // Plays sound for winning roll
    func playWin() {
        let asset = NSDataAsset(name: "win")!
        
        do {
            audioPlayerWin = try AVAudioPlayer(data: asset.data, fileTypeHint: "mp3")
            audioPlayerWin.play()
        }
        catch {
            print(error)
        }
    }
    
    // Plays sound for losing roll
    func playLoss() {
        let asset = NSDataAsset(name: "loss")!
        
        do {
            audioPlayerLoss = try AVAudioPlayer(data: asset.data, fileTypeHint: "mp3")
            audioPlayerLoss.play()
        }
        catch {
            print(error)
        }
    }
    
    func rollDice(){
        //do cool stuff here
        print("WE ROLLIN' BRO!")
        
        // Sound that plays for every roll
        playRollDice()
        
        let rolledNumber = Int.random(in: 1...20)
        
        let imageName = "roll_\(rolledNumber)"
        
        diceImageView.image = UIImage(named: imageName)
        
        if (imageName == "roll_1"){
            playLoss()
            criticalLabel.text = "SUX 2 SUK like Xichigan!"
        } else if (imageName == "roll_20"){
            playWin()
            criticalLabel.text = "YOU ARE A WINNER like The Ohio State University!"
        } else {
            criticalLabel.text = ""
        }
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }

}
