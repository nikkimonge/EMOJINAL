//
//  ViewController.swift
//  Emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Hello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func happyButton(_ sender: UIButton) {
        let tojAlert =  UIAlertController (title: "Happy Movie", message: "Mrs. Doubtfire", preferredStyle: UIAlertController.Style.alert)
        
        tojAlert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        present(tojAlert, animated: true, completion: nil)

    }
    
    @IBAction func sadButton(_ sender: UIButton) {
        let tojAlert =  UIAlertController (title: "Sad Movie", message: "The Choice", preferredStyle: UIAlertController.Style.alert)
        tojAlert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        present(tojAlert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

