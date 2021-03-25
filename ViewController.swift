//
//  ViewController.swift
//  Dice
//
//  Created by Rebecca Markovsky on 3/4/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var randomDice1 : Int = 0
    var randomDice2 : Int = 0
    let diceArray = ["dice1", "dice2","dice3", "dice5", "dice6"]
    

    @IBOutlet weak var imgDice1: UIImageView!
    
    @IBOutlet weak var imgDice2: UIImageView!
    
    @IBAction func btnRollDice(_ sender: UIButton)
    {
        rollDice()
    }
    func rollDice()
    {
        //roll the dice
        randomDice1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
        
        imgDice1.image = UIImage(named:diceArray[randomDice1])
        imgDice2.image = UIImage(named:diceArray[randomDice2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        if motion == .motionShake
        {
            rollDice()
        }
//        
    }
}

