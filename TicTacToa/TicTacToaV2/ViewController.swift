//
//  ViewController.swift
//  TicTacToaV2
//
//  Created by master on 12.05.16.
//  Copyright © 2016 de.beuth-hochschule. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var whichPlayer: UILabel!
    
    
    @IBOutlet weak var statusBar: UIProgressView!
    
    
    @IBOutlet weak var feld1: UIButton!
    @IBOutlet weak var feld2: UIButton!
    @IBOutlet weak var feld3: UIButton!
    @IBOutlet weak var feld4: UIButton!
    @IBOutlet weak var feld5: UIButton!
    @IBOutlet weak var feld6: UIButton!
    @IBOutlet weak var feld7: UIButton!
    @IBOutlet weak var feld8: UIButton!
    @IBOutlet weak var feld9: UIButton!
    @IBOutlet weak var resetKnopf: UIButton!
    
    var buttons: [UIButton] = []
    var brain: TTTBrain = TTTBrain()
    
    var playerCount = 0.0
    var progress: Float = 0
    let MAXPLAYCOUNT = 9.0
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        buttons = [feld1, feld2, feld3, feld4, feld5, feld6, feld7, feld8, feld9]
        winnerLabel.hidden = true
        resetKnopf.hidden = true
        statusBar.progress = 0
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func clicktFeld(sender: AnyObject) {
        if(playerCount == 9 || brain.fin){
            gameOver()
        
        }else{
            if(sender.currentTitle != "X" && sender.currentTitle != "Y"){
                sender.setTitle(welcherSpieler(playerCount), forState: UIControlState.Normal)
                brain.instertChar(sender.tag, wert: sender.currentTitle!!)
                brain.checkForWin()
            }
        }
        
    }
    @IBAction func clickReset(sender: AnyObject) {
        for button in buttons{
            button.hidden = false
        }
        resetKnopf.hidden = true
        winnerLabel.hidden = true
        progressLabel.text = "0%"
        statusBar.progress = 0
        playerCount = 0
        brain = TTTBrain()
    }
    
    func welcherSpieler(playCount: Double) -> String {
        if(playCount < MAXPLAYCOUNT){
            let zahl = playCount % 2
            playerCount += 1
            updateProgress(playerCount)
            if(zahl == 0){
                whichPlayer.text = "-->"
                return "X"
                
            }else{
                whichPlayer.text = "<--"
                return "Y"
                
            }
        }else{
            gameOver()
            return "game Over"

        }
    }
    func updateProgress(playercount: Double){
        progress = Float(playerCount/MAXPLAYCOUNT)
        progressLabel.text = "\(Int(progress * 100))%"
        statusBar.progress = Float(progress)
    }
    
    
    
    func gameOver()  {
        for button in buttons{
            button.hidden = true
            button.setTitle("", forState: UIControlState.Normal)
        }
        resetKnopf.hidden = false
        if(brain.winner != ""){
            winnerLabel.text = "The Winner is: \n\(brain.winner)"
        }else{
            winnerLabel.text = "No Winner... \nplease Reset!"
        }
        winnerLabel.hidden = false
    }

}

