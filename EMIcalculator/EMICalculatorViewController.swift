//
//  ViewController.swift
//  EMIcalculator1
//
//  Created by IE05 on 19/10/24.
//gcvhjnvmngv nvhbg

import UIKit

class EMICalculatorViewController: UIViewController{

    @IBOutlet private var amountTextField: UITextField!
    @IBOutlet private var intrestTextField: UITextField!
    @IBOutlet private var tenureTextField: UITextField!
    
    @IBOutlet private var amountStepper: UIStepper!
    @IBOutlet private var intrestStepper: UIStepper!
    @IBOutlet private var tenureStepper: UIStepper!
    
    @IBOutlet private var amountSlider: UISlider!
    @IBOutlet private var intrestSlider: UISlider!
    @IBOutlet private var tenureSlider: UISlider!
    
    @IBOutlet weak var resultLabel: UILabel!
    
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
    
    @IBAction private func tenureTextfield(_ sender: UITextField) {
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
    
    @IBAction private func amountSlider(_ sender: UISlider) {
        amounttextfield.text = String(Int(sender.value))
        amountstepper.value = Double(sender.value)

        }
    @IBAction private func intrestSlider(_ sender: UISlider) {
        intresttextfield.text = String(Int(sender.value))
        intreststepper.value = Double(sender.value)
    }
    @IBAction private func tenureSlider(_ sender: UISlider) {
        tenuretextfield.text = String(Int(sender.value))
        tenurestepper.value = Double(sender.value)
    }
    
    @IBAction private func calButton(_ sender: UIButton) {
        let amount = Double(amountTextField.text!)!
        let interest = (Double(intresttextfield.text!)! / 12) / 100
        let tenure = Double(tenuretextfield.text!)! * 12
        let cal = pow(1 + interest, tenure)
        let val = amount * interest * cal
        let demo = cal - 1
        let emi = val / demo
        resultlabel.text = String(emi)
      }
    }
