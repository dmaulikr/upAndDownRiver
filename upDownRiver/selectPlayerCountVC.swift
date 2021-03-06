//
//  ViewController.swift
//  upDownRiver
//
//  Created by bergerMacPro on 6/20/17.
//  Copyright © 2017 bergerMacPro. All rights reserved.
//

import UIKit


//var myGame: Game = Game(numPlayers: 2)

class ViewController: UIViewController {
    

    @IBOutlet weak var playerSlider: UISlider!
    @IBOutlet weak var playerCountDisplay: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerCountDisplay.text = String(Game.myGame.numPlayers)
        playerCountDisplay.textColor = colorScheme.blueberry
        playerSlider.minimumTrackTintColor = colorScheme.appleCore
        playerSlider.maximumTrackTintColor = colorScheme.blueberry
        
    }


    @IBAction func playerCountChanged(_ sender: Any) {
        
        Game.myGame.numPlayers = Int(playerSlider.value)
        playerCountDisplay.text = String(Game.myGame.numPlayers)
        
        if Game.myGame.numPlayers % 2 == 0 {
            playerCountDisplay.textColor = colorScheme.appleCore
        } else {
            playerCountDisplay.textColor = colorScheme.blueberry
        }
    }
  
    @IBAction func playerCountConfirmation(_ sender: Any) {
        performSegue(withIdentifier: "playerCountSubmit", sender: sender)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

