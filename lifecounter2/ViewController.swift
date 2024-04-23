//
//  ViewController.swift
//  lifecounter2
//
//  Created by Sachin Dhami on 4/17/24.
//

import UIKit

class ViewController: UIViewController {
    
    //Stacks
    @IBOutlet weak var Player1Stack: UIStackView!
    @IBOutlet weak var Player2Stack: UIStackView!
    @IBOutlet weak var Player3Stack: UIStackView!
    @IBOutlet weak var Player4Stack: UIStackView!
    @IBOutlet weak var Player5Stack: UIStackView!
    @IBOutlet weak var Player6Stack: UIStackView!
    @IBOutlet weak var Player7Stack: UIStackView!
    @IBOutlet weak var Player8Stack: UIStackView!
    
    //Player Life Counts
    var playerOneLife = 20;
    var playerTwoLife = 20;
    var playerThreeLife = 20
    var playerFourLife = 20
    var playerFiveLife = 20
    var playerSixLife = 20
    var playerSevenLife = 20
    var playerEightLife = 20
    
    
    //Total Players on Screen
    var totalPlayers = 4

    
    //Player Labels
    @IBOutlet weak var playerOne: UILabel!
    @IBOutlet weak var playerTwo: UILabel!
    @IBOutlet weak var playerThree: UILabel!
    @IBOutlet weak var playerFour: UILabel!
    @IBOutlet weak var playerFive: UILabel!
    @IBOutlet weak var playerSix: UILabel!
    @IBOutlet weak var playerSeven: UILabel!
    @IBOutlet weak var playerEight: UILabel!
    
    
    
    // Life Labels
    
    @IBOutlet weak var playerTwoLifeLabel: UILabel!
    @IBOutlet weak var playerThreeLifeLabel: UILabel!
    @IBOutlet weak var playerFourLifeLabel: UILabel!
    @IBOutlet weak var playerFiveLifeLabel: UILabel!
    @IBOutlet weak var playerSixLifeLabel: UILabel!
    @IBOutlet weak var playerSevenLifeLabel: UILabel!
    @IBOutlet weak var playerEightLifeLabel: UILabel!
    @IBOutlet weak var playerOneLifeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Player1Stack.isHidden = true
        // Do any additional setup after loading the view.
        updateLife()
        losingPlayerLabel.text = ""
    }
    
    
    
    
    
    
    //Losing Player Label
    @IBOutlet weak var losingPlayerLabel: UILabel!
    
    
    
    //Add, Drop, and History Buttons
    @IBAction func addPLayerButton(_ sender: UIButton) {
        if totalPlayers < 8 {
            totalPlayers += 1
        }
            
        
    }
    
    @IBAction func dropPlayerButton(_ sender: UIButton) {
        if totalPlayers < 8 {
            totalPlayers -= 1
        }
    }
    
    
    @IBAction func historyButton(_ sender: UIButton) {
    }
    
    
    
    
    
    
    
    //Player One Commands
    @IBAction func playerOnePlus1Button(_ sender: UIButton) {
        playerOneLife += 1
        updateLife()
        
    }
    
    @IBAction func playerOneMinus1Button(_ sender: UIButton) {
        playerOneLife -= 1
        updateLife()
    }
    
    @IBAction func playerOnePlusChunk(_ sender: UIButton) {
    
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to add:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerOneLife += number
                print("Player One's life: \(self.playerOneLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    @IBAction func playerOneMinusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to subtract:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerOneLife -= number
                print("Player One's life: \(self.playerOneLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    
    
    
    //Player Two Commands
    @IBAction func playerTwoPlus1Button(_ sender: UIButton) {
        playerTwoLife += 1
        updateLife()
    }
    
    @IBAction func playerTwoMinus1Button(_ sender: UIButton) {
        playerTwoLife -= 1
        updateLife()
    }
    
    @IBAction func playerTwoPlusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to add:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerTwoLife += number
                print("Player Two's life: \(self.playerTwoLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    @IBAction func playerTwoMinusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to subtract:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerTwoLife -= number
                print("Player Two's life: \(self.playerTwoLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    
    
    
    //Player Three Commands
    @IBAction func playerThreePlus1Button(_ sender: UIButton) {
        playerThreeLife += 1
        updateLife()
    }
    
    @IBAction func playerThreeMinus1Button(_ sender: UIButton) {
        playerThreeLife -= 1
        updateLife()
    }
    
    @IBAction func playerThreePlusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to add:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerThreeLife += number
                print("Player Three's life: \(self.playerThreeLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    @IBAction func playerThreeMinusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to subtract:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerThreeLife -= number
                print("Player Three's life: \(self.playerThreeLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    
    
    
    //Player Four Commands
    @IBAction func playerFourPlus1Button(_ sender: UIButton) {
        playerFiveLife += 1
        updateLife()
    }
    
    @IBAction func playerFourMinus1Button(_ sender: UIButton) {
        playerFiveLife -= 1
        updateLife()
    }
    
    @IBAction func playerFourPlusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to add:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerFourLife += number
                print("Player Four's life: \(self.playerFourLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    @IBAction func playerFourMinusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to subtract:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerFourLife -= number
                print("Player Four's life: \(self.playerFourLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    
    
    
    //Player Five Commands
    
    @IBAction func playerFivePlus1Button(_ sender: UIButton) {
        playerFiveLife += 1
        updateLife()
    }
    
    @IBAction func playerFiveMinus1Button(_ sender: UIButton) {
        playerFiveLife -= 1
        updateLife()
    }
    
    @IBAction func playerFivePlusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to add:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerFiveLife += number
                print("Player Five's life: \(self.playerFiveLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    @IBAction func playerFiveMinusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to subtract:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerFiveLife -= number
                print("Player Five's life: \(self.playerFiveLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    
    
    //Player Six Commands
    
    @IBAction func playerSixPlus1Button(_ sender: UIButton) {
        playerSixLife += 1
        updateLife()
    }
    
    @IBAction func playerSixMinus1Button(_ sender: UIButton) {
        playerSixLife -= 1
        updateLife()
    }
    
    @IBAction func playerSixPlusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to add:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerSixLife += number
                print("Player Six's life: \(self.playerSixLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    @IBAction func playerSixMinusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to subtract:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerSixLife -= number
                print("Player Six's life: \(self.playerSixLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    
    //Player Seven Commands
    
    @IBAction func playerSevenPlus1Button(_ sender: UIButton) {
        playerSevenLife += 1
        updateLife()
    }
    
    @IBAction func playerSevenMinus1Button(_ sender: UIButton) {
        playerSevenLife -= 1
        updateLife()
    }
    
    @IBAction func playerSevenPlusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to add:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerSevenLife += number
                print("Player Seven's life: \(self.playerSevenLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    @IBAction func playerSevenMinusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to subtract:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerSevenLife -= number
                print("Player Seven's life: \(self.playerSevenLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    
    
    //Player Eight Commands
    
    @IBAction func playerEightPlus1Button(_ sender: UIButton) {
        playerEightLife += 1
        updateLife()
    }
    
    @IBAction func playerEightMinus1Button(_ sender: UIButton) {
        playerEightLife -= 1
        updateLife()
    }
    
    @IBAction func playerEightPlusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to adc:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerEightLife += number
                print("Player Eight's life: \(self.playerEightLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    @IBAction func playerEightMinusChunk(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to subtract:", preferredStyle: .alert)
        

        alertController.addTextField { textField in
            textField.placeholder = "Enter a number"
            textField.keyboardType = .numberPad // Set keyboard type to number pad
        }
        

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Retrieve the entered number from the text field and add it to playerOneLife
            if let textField = alertController.textFields?.first, let text = textField.text, let number = Int(text) {
                self.playerEightLife -= number
                print("Player Eight's life: \(self.playerEightLife)")
            }
        }
        alertController.addAction(okAction)
        
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
    
        present(alertController, animated: true, completion: nil)
        
        
        updateLife()
    }
    
    
    
    
    //Update Life Function
    func updateLife() {
           playerOneLifeLabel.text = "\(playerOneLife)"
           playerTwoLifeLabel.text = "\(playerTwoLife)"
           playerThreeLifeLabel.text = "\(playerThreeLife)"
           playerFourLifeLabel.text = "\(playerFourLife)"
           playerFiveLifeLabel.text = "\(playerFiveLife)"
           playerSixLifeLabel.text = "\(playerSixLife)"
           playerSevenLifeLabel.text = "\(playerSevenLife)"
           playerEightLifeLabel.text = "\(playerEightLife)"
           
           if playerOneLife <= 0 {
               losingPlayerLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
               losingPlayerLabel.text = "Player 1 LOSES!"
               playerOneLifeLabel.text = "0"
               
           } else if playerTwoLife <= 0 {
               losingPlayerLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
               losingPlayerLabel.text = "Player 2 LOSES!"
               playerTwoLifeLabel.text = "0"
               
           } else if playerThreeLife <= 0 {
               losingPlayerLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
               losingPlayerLabel.text = "Player 3 LOSES!"
               playerThreeLifeLabel.text = "0"
               
           } else if playerFourLife <= 0 {
               losingPlayerLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
               losingPlayerLabel.text = "Player 4 LOSES!"
               playerFourLifeLabel.text = "0"
               
           } else if playerFiveLife <= 0 {
               losingPlayerLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
               losingPlayerLabel.text = "Player 5 LOSES!"
               playerFiveLifeLabel.text = "0"
               
           } else if playerSixLife <= 0 {
               losingPlayerLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
               losingPlayerLabel.text = "Player 6 LOSES!"
               playerSixLifeLabel.text = "0"
               
           } else if playerSevenLife <= 0 {
               losingPlayerLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
               losingPlayerLabel.text = "Player 7 LOSES!"
               playerSevenLifeLabel.text = "0"
               
           } else if playerEightLife <= 0 {
               losingPlayerLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
               losingPlayerLabel.text = "Player 8 LOSES!"
               playerEightLifeLabel.text = "0"
               
           } else {
               losingPlayerLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
               losingPlayerLabel.text = ""
           }
       }

    
    


}

