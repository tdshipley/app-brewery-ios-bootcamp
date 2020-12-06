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
    
    @IBAction func cNoteButtonPressed(_ sender: UIButton) {
        playSound(soundUrl: cSoundURL)
    }
    
    @IBAction func dNoteButtonPressed(_ sender: UIButton) {
        playSound(soundUrl: dSoundURL)
    }
    
    @IBAction func eNoteButtonPressed(_ sender: UIButton) {
        playSound(soundUrl: eSoundURL)
    }
    
    @IBAction func fNoteButtonPressed(_ sender: UIButton) {
        playSound(soundUrl: fSoundURL)
    }
    
    @IBAction func gNoteButtonPressed(_ sender: UIButton) {
        playSound(soundUrl: gSoundURL)
    }
    
    @IBAction func aNoteButtonPressed(_ sender: UIButton) {
        playSound(soundUrl: aSoundURL)
    }
    
    @IBAction func bNoteButtonPressed(_ sender: UIButton) {
        playSound(soundUrl: bSoundURL)
    }
}

