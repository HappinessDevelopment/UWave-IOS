//
//  ViewController.swift
//  RadioApp
//
//  Created by Jonathan Velazquez on 11/7/15.
//  Copyright © 2015 Jonathan Velazquez. All rights reserved.
//

import UIKit

class UWViewController: UIViewController {

   
    @IBOutlet weak var playButton: UIButton!


 
    override func viewDidLoad() {
        
        super.viewDidLoad()
        

        // Do any additional setup after loading the view, typically from a nib.
        //playButton.setTitle("Play", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        toggle()
    }
    func toggle(){
        if UWRadioPlayer.sharedInstance.currentlyPlaying(){
            pauseRadio()
        }else{
            playRadio()
        }
    }
    func playRadio(){
        
        let imageName = "UWavePauseButton.png"
        
        let image2 = UIImage(named: imageName)

        
        UWRadioPlayer.sharedInstance.play()
            //playButton.setTitle("Pause", forState: UIControlState.Normal)
        
            playButton.setImage(image2, forState: UIControlState.Normal)
        
    }
    func pauseRadio(){
        let imageName3 = "UWavePlayButton.png"
        let image3 = UIImage(named: imageName3)
        
        UWRadioPlayer.sharedInstance.pause()
        //playButton.setTitle("Play", forState: UIControlState.Normal)
        playButton.setImage(image3, forState: UIControlState.Normal)
        
    }
    
        
    }




