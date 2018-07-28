//
//  ViewController.swift
//  Dicee
//
//  Created by AhmedZlazel on 6/7/18.
//  Copyright © 2018 AhmedZlazel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    let diceImagesArr = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceeImage()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceeImage()
    }
    func updateDiceeImage(){
        diceImage1.image = UIImage(named: diceImagesArr[Int(arc4random_uniform(6))])
        diceImage2.image = UIImage(named: diceImagesArr[Int(arc4random_uniform(6))])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceeImage()
    }
}

