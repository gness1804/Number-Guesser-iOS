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
    
    @IBAction func mainButton(_ sender: Any) {
        userNumber = Int(numberInput.text!)!

    }
    
    @IBOutlet weak var numberInput: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

