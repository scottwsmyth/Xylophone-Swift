//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    var selectedSound: String = ""
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSound = soundArray[sender.tag - 1]
        playSound()
    }
    
    func playSound() {
        let soundURL = Bundle.main.url(forResource: selectedSound, withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            
            print(error)
        }
        
        audioPlayer.play()

    }
  

}

