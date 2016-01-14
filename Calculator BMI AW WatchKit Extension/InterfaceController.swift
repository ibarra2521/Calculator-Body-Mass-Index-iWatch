//
//  InterfaceController.swift
//  Calculator BMI AW WatchKit Extension
//
//  Created by Nivardo Ibarra on 11/16/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var lblWeight: WKInterfaceLabel!
    @IBOutlet var lblHeight: WKInterfaceLabel!
    var currentWeight:Float = 1
    var currentHeight:Float = 1
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func newWeightValue(value: Float) {
        currentWeight = value
        lblWeight.setText(String(currentWeight))
    }

    @IBAction func newHeightValue(value: Float) {
        currentHeight = value/100
        lblHeight.setText(String(currentHeight))
    }
    
    func getBMI(weight: Float, height: Float) -> Float {
        return weight/(height*height)
    }
    
    @IBAction func calculateBMI() {
        let result = getBMI(currentWeight, height:currentHeight)
        let valueContex = ValorToContext(description: "BMI", BMI: result)
        pushControllerWithName("IdentifierBMI", context: valueContex)
    }

    
}
