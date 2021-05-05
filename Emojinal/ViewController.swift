//
//  ViewController.swift
//  Emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Hello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //i think this just loads the view
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //create a dictionary so that the emojis are set to an emotion
let emojis = ["🥺":"sad", "😃":"happy"]
    
    //new dictionary that sets emotions to movies
var movieOptions =
    ["sad":["The Choice", "Les Misérables", "Good Will Hunting", "West Side Story", "6 Feet Apart", "The Notebook", "Titanic"],
     "happy":["Legally Blonde", "Mrs. Doubtfire", "Mamma Mia", "Aladdin", "Freaky Friday", "Breakfast At Tiffany's", "Ferris Buellar's Day Off"]
]

    
    
    @IBAction func happyButton(_ sender: UIButton) {
        
        //when the happy emoji is selected, the emotion is set to the lael
        let selectedEmotion = sender.titleLabel?.text
        //movieOptions select from the selected movie that corresponds with the emojis and finds a random one
        movieOptions[emojis[selectedEmotion!]!]!.shuffle()
        //i am pretty sure this just selects the movie to be used for the label but idk
        let emojiMessage =
        movieOptions[emojis[selectedEmotion!]!]?[0]
        //the alert will now show a message with the movie title
        let alert = UIAlertController(title:emojis["😃"]!, message: emojiMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Done", style: .default, handler: nil))
        //not sure what this does but i think something with the animation of the alert
        self.present(alert, animated: true)
        //alert.addAction(UIAlertAction(title:"Bye", style: .default, handler: nil))
        
        
    }
    //the same thing as above
    @IBAction func sadButton(_ sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        movieOptions[emojis[selectedEmotion!]!]!.shuffle()
        let emojiMessage =
            movieOptions[emojis[selectedEmotion!]!]?[0]
        let alert = UIAlertController(title:emojis["🥺"]!, message: emojiMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Done", style: .default, handler: nil))
        self.present(alert, animated: true)
       
        
        
        //alert.addAction(UIAlertAction(title: "Bye", style: .default, handler: nil))
        
        
        //let tojAlert =  UIAlertController (title: "Sad Movie", message: "The Choice", preferredStyle: UIAlertController.Style.alert)
        //tojAlert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
       // present(tojAlert, animated: true, completion: nil)
    }
    
  


}

