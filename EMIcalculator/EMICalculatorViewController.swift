//
//  ViewController.swift
//  EMIcalculator
//
//  Created by IE05 on 19/10/24.
//

import UIKit

class EMICalculatorViewController: UIViewController{

    @IBOutlet weak var amounttextfield: UITextField!
    @IBOutlet weak var intresttextfield: UITextField!
    @IBOutlet weak var tenuretextfield: UITextField!
    
    
    @IBOutlet weak var amountstepper: UIStepper!
    @IBOutlet weak var intreststepper: UIStepper!
    @IBOutlet weak var tenurestepper: UIStepper!
    
    
    
    @IBOutlet weak var amountslider: UISlider!
    @IBOutlet weak var intrestslider: UISlider!
    @IBOutlet weak var tenureslider: UISlider!
    
    
    @IBOutlet weak var resultlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Do any additional setup after loading the view.
      
        
    
    }
    @IBAction func amountTextFieldAction(_ sender: UITextField) {
        
        if let value = sender.text {
            if let final = Float(value) {
                amountslider.value = final
                amountstepper.value = Double(final)
                
            }
        }
        
    }
    
    @IBAction func intrestTextField(_ sender: UITextField) {
        if let value = sender.text {
            if let final = Float(value) {
                intrestslider.value = final
                intreststepper.value = Double(final)
                
            }
        }
        
    }
    
    
    @IBAction func tenuretextfield(_ sender: UITextField) {
        if let value = sender.text {
            if let final = Float(value) {
                tenureslider.value = final
                tenureslider.value = Float(final)
                
            }
        }
        
    }
    
    
    
    
    
    @IBAction func amountStepperAction(_ sender: UIStepper) {
        amounttextfield.text = String(Int(sender.value))
        amountslider.value = Float(sender.value)
    }
    

     @IBAction func intrestStepperAction(_ sender: UIStepper) {
         intresttextfield.text = String(Int( sender.value))
         intrestslider.value = Float(sender.value)
        
        }
     @IBAction func tenureStepperAction(_ sender: UIStepper) {
         tenuretextfield.text = String(Int( sender.value))
         tenureslider.value = Float(sender.value)
     }
    

    
    
    
    
    @IBAction func amountslider(_ sender: UISlider) {
        amounttextfield.text = String(Int(sender.value))
        amountstepper.value = Double(sender.value)

        }
    @IBAction func intrestslider(_ sender: UISlider) {
        intresttextfield.text = String(Int(sender.value))
        intreststepper.value = Double(sender.value)
    }
    @IBAction func tenureslider(_ sender: UISlider) {
        tenuretextfield.text = String(Int(sender.value))
        tenurestepper.value = Double(sender.value)
    }
    
   
    
    
    @IBAction func calButton(_ sender: UIButton) {
        let amount = Double(amounttextfield.text!)!
        let interest = (Double(intresttextfield.text!)! / 12) / 100
        let tenure = Double(tenuretextfield.text!)! * 12
         
        
//        let result = (amount * interest * pow(1 + interest, Double(tenure))) / (pow(1 + interest, Double(tenure)) - 1)
//        resultlabel.text = String(result)
        
        
        let cal = pow(1 + interest, tenure)
        let val = amount * interest * cal
        let demo = cal - 1
        
        let emi = val / demo
        resultlabel.text = String(emi)
      }
    }


