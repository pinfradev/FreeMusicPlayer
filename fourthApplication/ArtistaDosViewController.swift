//
//  ArtistaDosViewController.swift
//  fourthApplication
//
//  Created by Fray Pineda on 2/11/19.
//  Copyright © 2019 david. All rights reserved.
//

import UIKit
import AVFoundation

class ArtistaDosViewController: UIViewController {
    var playerThree: AVAudioPlayer = AVAudioPlayer()
    var playerFour: AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func pauseButtonThree(_ sender: UIButton) {
        playerThree.pause()
    }
    @IBAction func playButtonThree(_ sender: UIButton) {
        playerThree.play()
    }
    @IBAction func replayButtonThree(_ sender: UIButton) {
        playerThree.currentTime = 0
    }
    
    @IBAction func pauseButtonFour(_ sender: UIButton) {
        playerFour.pause()
    }
    @IBAction func playButtonFour(_ sender: UIButton) {
        playerFour.play()
    }
    @IBAction func replayButtonFour(_ sender: UIButton) {
        playerFour.currentTime = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        musicThree()
        musicFour()
    }
    
    func musicThree() {
        do {
            let audioPathTree = Bundle.main.path(forResource: "songthree", ofType: "mp3")
            
            try playerThree = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathTree!) as URL)
        }
            
        catch {
            //ERROR
        }
    }
    
    func musicFour() {
        do {
            let audioPathFour = Bundle.main.path(forResource: "songfour", ofType: "mp3")
            
            try playerFour = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathFour!) as URL)
        }
            
        catch {
            //ERROR
        }
    }

    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
