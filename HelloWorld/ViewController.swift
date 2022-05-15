//
//  ViewController.swift
//  HelloWorld
//
//  Created by Kasey on 5/14/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
    }
    
    @IBAction func showMessage(sender: UIButton) {
        //Initialize the dictionary for the emoji icons
        let emojiDict = ["👾": "Akuma",
                         "👻": "Ghost",
                         "🤓": "Nerd",
                         "🤖": "Robot"]
        
        //The sender is the button that is tapped by the user
        //Here we store the sender in the selectedButton constant
        let selectedButton = sender
        var emojiMeaning: String
        //Get the emoji from the title label of the selected button
        if let wordToLookup = selectedButton.titleLabel?.text {
            //Get the meaning of the emoji from the dictionary
            switch wordToLookup {
            case "👾":
                emojiMeaning = emojiDict["👾"]!
            case "👻":
                emojiMeaning = emojiDict["👻"]!
            case "🤓":
                emojiMeaning = emojiDict["🤓"]!
            case "🤖":
                emojiMeaning = emojiDict["🤖"]!
            default:
                emojiMeaning = "There's no associated emoji"
    
            }
            //Display the meaning of the emoji
            let alertController = UIAlertController(title: "Meaning", message: emojiMeaning, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default))
            present(alertController, animated: true, completion: nil)
        }
    }
}

