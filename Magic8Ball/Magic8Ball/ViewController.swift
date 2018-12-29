//
//  ViewController.swift
//  Magic8Ball
//
//  Created by apple on 29/12/2018.
//  Copyright © 2018 TECNOLOGIA EN SERVICIOS BIOMEDICOS SAPI DE CV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewMagicBall: UIImageView!
    let ballImages = ["ball1","ball2","ball3","ball4","ball5"]
    var randomImage: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage ()
    }

    @IBAction func askButton(_ sender: UIButton) {
        updateBallImage ()
    }
    
    func updateBallImage ()
    {
        
        randomImage = Int.random(in: 0...4)
        print(randomImage)
        imageViewMagicBall.image = UIImage.init(named: ballImages [randomImage])
        
    
    }
}

