//
//  ViewController.swift
//  Feb23CardGame
//
//  Created by Asuka Nakagawa on 2016-02-23.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore: Int = 0
    
    @IBOutlet weak var enermyScoreLabel: UILabel!
    var enermyScore: Int = 0
    
    
    var cardNamesArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        // Randomize a number for the first imageview
        let firstRandomNumber: Int = Int(arc4random_uniform(13))
        
        // Construct a String with the random number
        let firstCardString: String = self.cardNamesArray[firstRandomNumber]
        
        // Set the firstcard imageview to the asset corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
    
        // Randomize a number for the second imageview
        let secondRandomNumber: Int = Int(arc4random_uniform(13))
        
        // Construct a String with the random number
        let secondCardString: String = self.cardNamesArray[secondRandomNumber]
       
        // Set the secondcard imageview to the asset corresponding to the randomized number
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        // Determine the higher card
        if firstRandomNumber > secondRandomNumber {
            
            //TODO: first card is larger
            self.playerScore += 1
            self.playerScoreLabel.text = String(self.playerScore)
            
        } else if firstRandomNumber == secondRandomNumber {
            
            //TODO: numbers are equal
        } else {
           
            // TODO: second card is larger
            self.enermyScore += 1
            self.enermyScoreLabel.text = String(self.enermyScore)
        }
    }
}

