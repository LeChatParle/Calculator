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
    @IBOutlet weak var secondHist: UILabel!
    @IBOutlet weak var thirdHist: UILabel!
    @IBOutlet weak var fourthHist: UILabel!
    
    var dataState = 0
    var operationState = 0
    var evaledData = ""
    var negState = 0
    
    //Clears the display by writing a zero
    @IBAction func clearMain(_ sender: UIButton) {
        mainHistory.text = "0"
    }
    
    @IBAction func clearAll(_ sender: UIButton) {
        mainHistory.text = "0"
        secondHist.text = ""
        thirdHist.text = ""
        fourthHist.text = ""
    }
    
    //Checks if there are any significant numbers, then decides if it should
    //overwrite or append the minus/negative symbol
    @IBAction func minusNeg(_ sender: UIButton) {
        if negState == 0 {
            if dataState == 0 {
                mainHistory.text = "-"
            } else {
                mainHistory.text = mainHistory.text! + "-"
            }
            dataState = 1
            operationState = 1
            negState = 1
        }
    }
    
    @IBAction func dotDot(_ sender: UIButton) {
        if operationState == 0 {
            mainHistory.text = mainHistory.text! + "."
            operationState = 1
        }
    }
    
    // Prints addition, multiplication, and division symbols when pressed
    @IBAction func multPlusDiv(_ sender: UIButton) {
        if operationState == 0 && dataState != 0 {
            switch sender.tag {
            case 13:
                mainHistory.text = mainHistory.text! + "*"
            case 14:
                mainHistory.text = mainHistory.text! + "/"
            case 15:
                mainHistory.text = mainHistory.text! + "+"
            default:
                print("Error: unnexpected imput")
            }
        }
        operationState = 1
    }
    
    @IBAction func evalData(_ sender: UIButton) {
        if operationState != 1 {
            evaledData = mainHistory.text!
            let expression = NSExpression(format: evaledData)
            let result = expression.expressionValue(with: nil, context: nil) as! Int
            fourthHist.text = thirdHist.text
            thirdHist.text = secondHist.text
            secondHist.text = String(result)
            mainHistory.text = "0"
            dataState = 0
            operationState = 0
        }
    }
    
    @IBAction func displayNum(_ sender: UIButton) {
        if dataState == 1 {
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
            operationState = 0
            negState = 0
        } else {
            switch (sender.tag) {
            case 1:
                mainHistory.text = "0"
            case 2:
                mainHistory.text = "1"
            case 3:
                mainHistory.text = "2"
            case 4:
                mainHistory.text = "3"
            case 5:
                mainHistory.text = "4"
            case 6:
                mainHistory.text = "5"
            case 7:
                mainHistory.text = "6"
            case 8:
                mainHistory.text = "7"
            case 9:
                mainHistory.text = "8"
            case 10:
                mainHistory.text = "9"
            default:
                print("Error: unnexpected imput")
            }
            dataState = 1
            operationState = 0
            negState = 0
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

