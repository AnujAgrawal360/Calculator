//
//  ViewController.swift
//  EMIcalculator1
//
//  Created by IE05 on 19/10/24.
//

import UIKit

class EMICalculatorViewController: UIViewController{

    @IBOutlet private var amountextfield: UITextField!
    @IBOutlet private var intresttextfield: UITextField!
    @IBOutlet private var tenuretextfield: UITextField!
    
    @IBOutlet private var amountstepper: UIStepper!
    @IBOutlet private var intreststepper: UIStepper!
    @IBOutlet private var tenurestepper: UIStepper!
    
    @IBOutlet private var amountslider: UISlider!
    @IBOutlet private var intrestslider: UISlider!
    @IBOutlet private var tenureslider: UISlider!
    
    @IBOutlet weak var resultlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction private func amountTextFieldAction(_ sender: UITextField) {
        if let value = sender.text {
            if let final = Float(value) {
                amountslider.value = final
                amountstepper.value = Double(final)
                
            }
        }  
    }
    
    @IBAction private func intrestTextField(_ sender: UITextField) {
        if let value = sender.text {
            if let final = Float(value) {
                intrestslider.value = final
                intreststepper.value = Double(final)
            }
        }   
    }
    
    @IBAction private func tenuretextfield(_ sender: UITextField) {
        if let value = sender.text {
            if let final = Float(value) {
                tenureslider.value = final
                tenureslider.value = Float(final)
                
            }
        } 
    }
    
    @IBAction private func amountStepperAction(_ sender: UIStepper) {
        amounttextfield.text = String(Int(sender.value))
        amountslider.value = Float(sender.value)
    }
    
     @IBAction private func intrestStepperAction(_ sender: UIStepper) {
         intresttextfield.text = String(Int( sender.value))
         intrestslider.value = Float(sender.value)
        
        }
     @IBAction private func tenureStepperAction(_ sender: UIStepper) {
         tenuretextfield.text = String(Int( sender.value))
         tenureslider.value = Float(sender.value)
     }
    
    @IBAction private func amountslider(_ sender: UISlider) {
        amounttextfield.text = String(Int(sender.value))
        amountstepper.value = Double(sender.value)

        }
    @IBAction private func intrestslider(_ sender: UISlider) {
        intresttextfield.text = String(Int(sender.value))
        intreststepper.value = Double(sender.value)
    }
    @IBAction private func tenureslider(_ sender: UISlider) {
        tenuretextfield.text = String(Int(sender.value))
        tenurestepper.value = Double(sender.value)
    }
    
    @IBAction private func calButton(_ sender: UIButton) {
        let amount = Double(amounttextfield.text!)!
        let interest = (Double(intresttextfield.text!)! / 12) / 100
        let tenure = Double(tenuretextfield.text!)! * 12
        let cal = pow(1 + interest, tenure)
        let val = amount * interest * cal
        let demo = cal - 1
        let emi = val / demo
        resultlabel.text = String(emi)
      }
    }
