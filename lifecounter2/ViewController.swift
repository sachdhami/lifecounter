//
//  ViewController.swift
//  lifecounter2
//
//  Created by Sachin Dhami on 4/17/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateLife()
        losingPlayerLabel.text = ""
    }
    
    var playerOneLife = 20;
    var playerTwoLife = 20;

    
    
    @IBOutlet weak var playerOne: UILabel!
    
    @IBOutlet weak var playerTwo: UILabel!
    
    @IBOutlet weak var playerOneLifeLabel: UILabel!
    
    @IBOutlet weak var playerTwoLifeLabel: UILabel!
    
    
    @IBOutlet weak var losingPlayerLabel: UILabel!
    
    
    @IBAction func playerOnePlus1Button(_ sender: UIButton) {
        playerOneLife += 1
        updateLife()
        
    }
    
    @IBAction func playerOneMinus1Button(_ sender: UIButton) {
        playerOneLife -= 1
        updateLife()
    }
    
    @IBAction func playerOnePlus5Button(_ sender: UIButton) {
        playerOneLife += 5
        updateLife()
    }
    
    @IBAction func playerOneMinus5Button(_ sender: UIButton) {
        playerOneLife -= 5
        updateLife()
    }
    
    
    
    @IBAction func playerTwoPlus1Button(_ sender: UIButton) {
        playerTwoLife += 1
        updateLife()
    }
    
    @IBAction func playerTwoMinus1Button(_ sender: UIButton) {
        playerTwoLife -= 1
        updateLife()
    }
    
    
    @IBAction func playerTwoPlus5Button(_ sender: UIButton) {
        playerTwoLife += 5
        updateLife()
    }
    
    
    @IBAction func playerTwoMinus5Button(_ sender: UIButton) {
        playerTwoLife -= 5
        updateLife()
    }
    
    func updateLife() {
           playerOneLifeLabel.text = "\(playerOneLife)"
           playerTwoLifeLabel.text = "\(playerTwoLife)"
           
           if playerOneLife <= 0 {
               losingPlayerLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
               losingPlayerLabel.text = "Player 1 LOSES!"
               playerOneLifeLabel.text = "0"
           } else if playerTwoLife <= 0 {
               losingPlayerLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
               losingPlayerLabel.text = "Player 2 LOSES!"
               playerTwoLifeLabel.text = "0"
               
           } else {
               losingPlayerLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
               losingPlayerLabel.text = ""
           }
       }

    
    


}

