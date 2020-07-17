//
//  ViewController.swift
//  GuessTheAnimal
//
//  Created by wade chen on 21/6/20.
//  Copyright © 2020 Chris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scorePoints: UILabel!
    
    
    var stringArray = ["Bear","Cat","Elephant","Rhino","Tiger"]
    var imageArray = [ #imageLiteral(resourceName: "bear"),#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "elephant"),#imageLiteral(resourceName: "rhino"),#imageLiteral(resourceName: "tiger")]
    var imageIndex = 0
    var stringIndex = 0
    var scoreNumber = 0
    var answerFlag : Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Set the background image
        backgroundImageView.image = #imageLiteral(resourceName: "background")
        
        //Set question color
        questionLabel.textColor = UIColor.black
        
        //Set the name to blank
        animalName.text = ""
        animalName.textColor = UIColor.black
        
        //Set the score name color
        scoreLabel.textColor = UIColor.black
        
        //Sets the
        scorePoints.textColor = UIColor.black
        scorePoints.text = String(0)
        
        //
        yesButton.setTitle("YES", for: .normal)
        yesButton.setTitleColor(UIColor.black, for: .normal)
        
        //
        noButton.setTitle("NO", for: .normal)
        noButton.setTitleColor(UIColor.black, for: .normal)
        
        
        //Initialise the animal image view
        
        //Assign a random number to the index
        imageIndex = Int.random(in: 0...4)
        stringIndex = Int.random(in: 0...4)
        
        //Sets the new image
        animalImageView.image = imageArray[imageIndex]
        animalName.text = stringArray[stringIndex]
        
        
    }
    
    
    @IBAction func yesButtonPressed(_ sender: UIButton) {

        //Checks to see if the two indexes are the same
        if(imageIndex == stringIndex)
        {
            //Increase score by 1
            scoreNumber += 1
            
        } else {
            
            //Decrease score by 1
            scoreNumber -= 1
        }
        
        //Assign a random number to the index
        imageIndex = Int.random(in: 0...4)
        stringIndex = Int.random(in: 0...4)
        
        //Sets the new image
        animalImageView.image = imageArray[imageIndex]
        animalName.text = stringArray[stringIndex]
        
        //Set the score
        scorePoints.text = String(scoreNumber)
        
    }
    
    
    @IBAction func noButtonPressed(_ sender: Any) {
        
        //Checks to see if the two indexes are the same
        if(imageIndex != stringIndex)
        {
            //Increase score by 1
            scoreNumber += 1
            
        } else {
            
            //Decrease score by 1
            scoreNumber -= 1
        }
        
        //Assign a random number to the index
        imageIndex = Int.random(in: 0...4)
        stringIndex = Int.random(in: 0...4)
        
        //Sets the new image
        animalImageView.image = imageArray[imageIndex]
        animalName.text = stringArray[stringIndex]
        
        //Set the score
        scorePoints.text = String(scoreNumber)
    }
    
    
    
    
    
    
    
    
}

