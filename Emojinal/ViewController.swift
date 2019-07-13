//
//  ViewController.swift
//  Emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Hello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let emojis = ["🥺":"sad", "😃":"happy"]
var movieOptions =
    ["sad":["The Choice", "Les Misérables", "Good Will Hunting", "West Side Story", "6 Feet Apart", "The Notebook", "Titanic"],
     "happy":["Legally Blonde", "Mrs. Doubtfire", "Mamma Mia", "Aladdin", "Freaky Friday", "Breakfast At Tiffany's", "Ferris Buellar's Day Off"]
]

    @IBAction func happyButton(_ sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        movieOptions[emojis[selectedEmotion!]!]!.shuffle()
        let emojiMessage =
        movieOptions[emojis[selectedEmotion!]!]?[0]
        let alert = UIAlertController(title:emojis["😃"]!, message: emojiMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Done", style: .default, handler: nil))
        self.present(alert, animated: true)
        //alert.addAction(UIAlertAction(title:"Bye", style: .default, handler: nil))
        
        
    }
    
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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

