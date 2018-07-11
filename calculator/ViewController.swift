//
//  ViewController.swift
//  calculator
//
//  Created by Akshay Sharma on 08/10/17.
//  Copyright © 2017 Akshay Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var op1 = ""
    var op2 = ""
    var op = ""
    var newOp=true
    
    @IBOutlet weak var result: UITextView!
    
    @IBAction func acButton(_ sender: Any) {
        result.text="0"
        op1 = ""
        op2 = ""
        op = ""
        newOp=true
        
    }
    
    @IBAction func percetileButton(_ sender: Any) {
    }
    
    @IBAction func divideButton(_ sender: Any) {
        op="/"
        newOp=true
        op1=result.text
    }
    
    @IBAction func mulButton(_ sender: Any) {
        op="*"
        newOp=true
        op1=result.text
        
    }
    
    @IBAction func subButton(_ sender: Any) {
        op="-"
        newOp=true
        op1=result.text
    }
    
    @IBAction func addButton(_ sender: Any) {
        
        op="+"
        newOp=true
        op1=result.text
    }
    
    @IBAction func equalButton(_ sender: Any) {
        op2=result.text
        
        
        
        switch op {
        case "+":
            let r = (Double(op1)!+Double(op2)!)
            result.text=String(r)
            break
            
        case "-":
            let r = (Double(op1)!-Double(op2)!)
            result.text=String(r)
            break
            
        case "*":
            let r = (Double(op1)!*Double(op2)!)
            result.text=String(r)
            break
            
        case "/":
            let r = (Double(op1)!/Double(op2)!)
            result.text=String(r)
            break
            
        default:
            result.text="ERROR"
            op1 = ""
            op2 = ""
            op = ""
            newOp=true
        }
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        addToText(number: "0")
    }
    
    @IBAction func oneButton(_ sender: Any) {
        addToText(number: "1")
    }
    
    @IBAction func twoButton(_ sender: Any) {
        addToText(number: "2")
    }
    
    @IBAction func threeButton(_ sender: Any) {
        addToText(number: "3")
    }
    
    @IBAction func fourButton(_ sender: Any) {
        addToText(number: "4")
    }
    
    @IBAction func fivebutton(_ sender: Any) {
        addToText(number: "5")
    }
    
    @IBAction func sixButton(_ sender: Any) {
        addToText(number: "6")
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        addToText(number: "7")
    }
    
    @IBAction func eightButton(_ sender: Any) {
        addToText(number: "8")
    }
    
    @IBAction func nineButton(_ sender: Any) {
        addToText(number: "9")
    }
    
    @IBAction func pointButton(_ sender: Any) {
        addToText(number: ".")
    }

    
    
    func addToText(number : String)
    {
        if newOp
        {
          result.text=""
            newOp=false
        }
        var textNumber = result.text!
        textNumber=textNumber+number
        result.text=textNumber
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

