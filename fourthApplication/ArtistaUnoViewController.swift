//
//  ArtistaUnoViewController.swift
//  fourthApplication
//
//  Created by Fray Pineda on 2/11/19.
//  Copyright © 2019 david. All rights reserved.
//

import UIKit
import AVFoundation

class ArtistaUnoViewController: UIViewController {
    var player: AVAudioPlayer = AVAudioPlayer()
    var playerTwo: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        music()
        musicTwo()
    }
    
    func music() {
        do {
            let audioPath = Bundle.main.path(forResource: "songone", ofType: "mp3")
            
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        
        catch {
            //ERROR
        }
    }
    
    func musicTwo() {
        do {
            let audioPathTwo = Bundle.main.path(forResource: "songtwo", ofType: "mp3")
            
            try playerTwo = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathTwo!) as URL)
        }
            
        catch {
            //ERROR
        }
    }

    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func pauseButton(_ sender: UIButton) {
        player.pause()
    }
    @IBAction func playButton(_ sender: UIButton) {
        player.play()
    }
    @IBAction func replayButton(_ sender: UIButton) {
        player.currentTime = 0
    }
    @IBAction func backPressedTwo(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pauseButtonTwo(_ sender: UIButton) {
        playerTwo.pause()
    }
    @IBAction func playButtonTwo(_ sender: UIButton) {
        playerTwo.play()
    }
    @IBAction func replayButtonTwo(_ sender: UIButton) {
        playerTwo.currentTime = 0
    }
}
