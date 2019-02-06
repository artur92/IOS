//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
 
  var myAudioPlayer: AVAudioPlayer!
  let soundName = ["note1", "note2", "note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)
        playSound(soundName: soundName[sender.tag-1])
        /*
        if(sender.tag == 1)
        {
          let url = Bundle.main.url(forResource: "note1", withExtension: "wav")
            do {
                try myAudioPlayer = AVAudioPlayer(contentsOf: url!)
            } catch let error {
                print(error.localizedDescription)
            }
        }
        else if(sender.tag == 2)
        {
         let url = Bundle.main.url(forResource: "note2", withExtension: "wav")
            do {
                try myAudioPlayer = AVAudioPlayer(contentsOf: url!)
            } catch let error {
                print(error.localizedDescription)
            }
        }
        else if(sender.tag == 3)
        {
            let url = Bundle.main.url(forResource: "note3", withExtension: "wav")
            do {
                try myAudioPlayer = AVAudioPlayer(contentsOf: url!)
            } catch let error {
                print(error.localizedDescription)
            }
        }
        else if(sender.tag == 4)
        {
            let url = Bundle.main.url(forResource: "note4", withExtension: "wav")
            do {
                try myAudioPlayer = AVAudioPlayer(contentsOf: url!)
            } catch let error {
                print(error.localizedDescription)
            }
        }
        else if(sender.tag == 5)
        {
            let url = Bundle.main.url(forResource: "note5", withExtension: "wav")
            do {
                try myAudioPlayer = AVAudioPlayer(contentsOf: url!)
            } catch let error {
                print(error.localizedDescription)
            }
        }
        else if(sender.tag == 6)
        {
            let url = Bundle.main.url(forResource: "note6", withExtension: "wav")
            do {
                myAudioPlayer = try  AVAudioPlayer(contentsOf: url!)
            } catch let error {
                print(error.localizedDescription)
            }
        }
        else if(sender.tag == 7)
        {
            let url = Bundle.main.url(forResource: "note7", withExtension: "wav")
            do {
                try myAudioPlayer = AVAudioPlayer(contentsOf: url!)
            } catch let error {
                print(error.localizedDescription)
            }

        }
   
         myAudioPlayer?.play()
        
        
         */
    }
    func playSound(soundName: String)
{
    let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
    do {
        try myAudioPlayer = AVAudioPlayer(contentsOf: url!)
    } catch let error {
        print(error.localizedDescription)
    }
      myAudioPlayer?.play()
    
}
  

}

