//
//  ViewController.swift
//  Number Guesser
//
//  Created by Graham Nessler on 6/25/18.
//  Copyright © 2018 Graham Nessler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var userNumber: Int = 0
    
    var computerNumber: Int = 0
    
    @IBOutlet weak var mainOutput: UILabel!
    
    @IBOutlet weak var numberInput: UITextField!
    
    func inputIsValid(input: Int) -> Bool {
        if input < 0 || input > 100 {
            print("Error: your number must be between 0 and 100. Please try again.")
            return false
        }
        return true
    }
    
    func compareNumbers(userNum: Int, compNum: Int) {
        if userNum == compNum {
            mainOutput.text = "You win!!"
        } else if userNum < compNum {
            mainOutput.text = "Your number is too low. Please try again."
        } else {
            mainOutput.text = "Your number is too high. Please try again."
        }
    }
    
    // TODO: come back to nil check for no input
    @IBAction func mainButton(_ sender: Any) {
        userNumber = (Int(numberInput.text!))!
        computerNumber = Int(arc4random_uniform(101))
        print(userNumber)
        print(computerNumber)
        if inputIsValid(input: userNumber) {
            compareNumbers(userNum: userNumber, compNum: computerNumber)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

