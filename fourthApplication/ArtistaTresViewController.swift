//
//  ArtistaTresViewController.swift
//  fourthApplication
//
//  Created by Fray Pineda on 2/11/19.
//  Copyright © 2019 david. All rights reserved.
//

import UIKit
import AVFoundation

class ArtistaTresViewController: UIViewController {
    var playerFive: AVAudioPlayer = AVAudioPlayer()
    var playerSix: AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func pauseButtonFive(_ sender: UIButton) {
        playerFive.pause()
    }
    @IBAction func playButtonFive(_ sender: UIButton) {
        playerFive.play()
    }
    @IBAction func replayButtonFive(_ sender: UIButton) {
        playerFive.currentTime = 0
    }
    
    @IBAction func pauseButtonSix(_ sender: UIButton) {
        playerSix.pause()
    }
    @IBAction func playButtonSix(_ sender: UIButton) {
        playerSix.play()
    }
    @IBAction func replayButtonSix(_ sender: UIButton) {
        playerSix.currentTime = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        musicFive()
        musicSix()
    }
    
    func musicFive() {
        do {
            let audioPathFive = Bundle.main.path(forResource: "songfive", ofType: "mp3")
            
            try playerFive = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathFive!) as URL)
        }
            
        catch {
            //ERROR
        }
    }
    
    func musicSix() {
        do {
            let audioPathSix = Bundle.main.path(forResource: "songsix", ofType: "mp3")
            
            try playerSix = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathSix!) as URL)
        }
            
        catch {
            //ERROR
        }
    }
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
