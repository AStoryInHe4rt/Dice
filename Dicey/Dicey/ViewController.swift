//
//  ViewController.swift
//  Dicey
//
//  Created by Maurice-School on 8/1/18.
//  Copyright © 2018 Maurice-School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    var dicePictureArray: [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    @IBAction func rollTheDice(_ sender: UIButton) {
        generateRandomNumber()
        changeDiceImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollButton.layer.cornerRadius = 4.0
        rollButton.layer.borderWidth = 3.5
        rollButton.layer.borderColor = UIColor.black.cgColor
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateRandomNumber() {
        randomDiceIndex1 = Int (arc4random_uniform(6))
        randomDiceIndex2 = Int (arc4random_uniform(6))
    }
    
    func changeDiceImage() {
        dice1.image = UIImage(named: dicePictureArray[randomDiceIndex1])
        dice2.image = UIImage(named: dicePictureArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        generateRandomNumber()
        changeDiceImage()
    }


}

