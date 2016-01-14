//
//  ViewDetail.swift
//  Calculator BMI AW
//
//  Created by Nivardo Ibarra on 11/16/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import WatchKit
import Foundation


class ViewDetail: WKInterfaceController {

    @IBOutlet var lblBMI: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let BMI = context as! ValorToContext
        lblBMI.setText(String(BMI.valueBMI))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
