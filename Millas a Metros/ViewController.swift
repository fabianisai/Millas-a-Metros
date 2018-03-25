//
//  ViewController.swift
//  Millas a Metros
//
//  Created by FabianIsai on 2/14/18.
//  Copyright © 2018 FabianIsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var distanceTextFiled: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var resultadoLabel: UILabel!
    
    let mileUnit : Double = 1.609
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        resultadoLabel.text = "Escribe la distacia a convertir"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func convertClicked(_ sender: UIButton) {
        
        let selectedIndex = segmentedControl.selectedSegmentIndex
        
        let textFieldVal = Double(distanceTextFiled.text!)!
        
        // print("Hemos seleciconado \(selectedIndex)")
        
        if selectedIndex == 0 {
            let convertedValue = textFieldVal / mileUnit
            reloadView(textFieldVal : textFieldVal,convertedValue: convertedValue)
        } else if selectedIndex == 1 {
            let convertedValue = textFieldVal * mileUnit
            reloadView(textFieldVal : textFieldVal,convertedValue: convertedValue)
        } else {
            print("Ningun caso debe estar aqui")
        }
        
    }
    
    func reloadView(textFieldVal : Double, convertedValue : Double){
        let initValue = String(format: "%.2f",textFieldVal)
        let endValue = String(format:  "%.2f",convertedValue)
        if segmentedControl.selectedSegmentIndex == 0 {
            resultadoLabel.text = "\(initValue) km = \(endValue) millas"
        }else{
            resultadoLabel.text = "\(initValue) millas = \(endValue) km"
        }
    }
    
   
    

}

