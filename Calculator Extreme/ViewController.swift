//
//  ViewController.swift
//  Calculator Extreme
//
//  Created by Jeremy Edwards on 2018-04-13.
//  Copyright © 2020 Jeremy Edwards. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainHistory: UILabel!
    @IBOutlet weak var clearData: UIButton!
    @IBOutlet weak var clearHistory: UIButton!
    @IBOutlet weak var multiply: UIButton!
    @IBOutlet weak var divide: UIButton!
    @IBOutlet weak var add: UIButton!
    @IBOutlet weak var subtract: UIButton!
    @IBOutlet weak var evaluate: UIButton!
    @IBOutlet weak var period: UIButton!
    
    
    @IBAction func displayNum(_ sender: UIButton) {
        switch (sender.tag) {
        case 1:
            mainHistory.text = mainHistory.text! + "0"
        case 2:
            mainHistory.text = mainHistory.text! + "1"
        case 3:
            mainHistory.text = mainHistory.text! + "2"
        case 4:
            mainHistory.text = mainHistory.text! + "3"
        case 5:
            mainHistory.text = mainHistory.text! + "4"
        case 6:
            mainHistory.text = mainHistory.text! + "5"
        case 7:
            mainHistory.text = mainHistory.text! + "6"
        case 8:
            mainHistory.text = mainHistory.text! + "7"
        case 9:
            mainHistory.text = mainHistory.text! + "8"
        case 10:
            mainHistory.text = mainHistory.text! + "9"
        default:
            print("Error: unnexpected imput")
        }
    }
    
    
    //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

