//
//  RadioPlayer.swift
//  RadioApp
//
//  Created by Jonathan Velazquez on 11/7/15.
//  Copyright © 2015 Jonathan Velazquez. All rights reserved.
//

import Foundation
import AVFoundation

class UWRadioPlayer {
    static let sharedInstance = UWRadioPlayer()
    private var player = AVPlayer(URL: NSURL(string: "http://live.uwave.fm:8000/listen-128.mp3")!)
    
    private var isPlaying = false
    
    func play() {
        player.play()
        isPlaying = true
    }
    
    func pause() {
        player.pause()
        isPlaying = false
    }
    
    func toggle() {
        if isPlaying == true {
            pause()
        } else {
            play()
        }
    }
    
    func currentlyPlaying() -> Bool {
        return isPlaying
    }
    
}