//
//  ViewController.swift
//  Dices
//
//  Created by apple on 28/12/2018.
//  Copyright © 2018 TECNOLOGIA EN SERVICIOS BIOMEDICOS SAPI DE CV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2","dice3","dice4","dice5","dice6",]
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2 = 2

    override func viewDidLoad() {
        updateDiceImage()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageViiew2: UIImageView!
    
    @IBAction func rollButtonPress(_ sender: UIButton) {
        updateDiceImage()
       
    }
    
    func updateDiceImage()
    {
        randomDiceIndex1 = Int.random(in: 0...5)
        randomDiceIndex2 = Int.random(in: 0...5)
        print(randomDiceIndex1)
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageViiew2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}

