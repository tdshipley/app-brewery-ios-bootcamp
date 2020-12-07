//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var audioPlayer = AVAudioPlayer()
    
    let aSoundURL = Bundle.main.url(forResource: "A", withExtension: "wav")!
    let bSoundURL = Bundle.main.url(forResource: "B", withExtension: "wav")!
    let cSoundURL = Bundle.main.url(forResource: "C", withExtension: "wav")!
    let dSoundURL = Bundle.main.url(forResource: "D", withExtension: "wav")!
    let eSoundURL = Bundle.main.url(forResource: "E", withExtension: "wav")!
    let fSoundURL = Bundle.main.url(forResource: "F", withExtension: "wav")!
    let gSoundURL = Bundle.main.url(forResource: "G", withExtension: "wav")!

    fileprivate func playSound(soundUrl: URL) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl)
            audioPlayer.play()
        } catch {
            print("Could not play file")
        }
    }
    
    fileprivate func playSoundAndDimButton(_ sender: UIButton, soundUrl: URL) {
        sender.alpha = 0.5
        playSound(soundUrl: soundUrl)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
    }
    
    @IBAction func noteButtonPressed(_ sender: UIButton) {
        switch sender.currentTitle {
        case "C":
            playSoundAndDimButton(sender, soundUrl: cSoundURL)
        case "D":
            playSoundAndDimButton(sender, soundUrl: dSoundURL)
        case "E":
            playSoundAndDimButton(sender, soundUrl: eSoundURL)
        case "F":
            playSoundAndDimButton(sender, soundUrl: fSoundURL)
        case "G":
            playSoundAndDimButton(sender, soundUrl: gSoundURL)
        case "A":
            playSoundAndDimButton(sender, soundUrl: aSoundURL)
        case "B":
            playSoundAndDimButton(sender, soundUrl: bSoundURL)
        default:
            print("Bad thing happened")
        }
    }
}

