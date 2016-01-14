//
//  ValorToContext.swift
//  Calculator BMI AW
//
//  Created by Nivardo Ibarra on 11/16/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import WatchKit

class ValorToContext: NSObject {
    var descriptionBMI = ""
    var valueBMI: Float = 0.0
    
    init(description: String, BMI: Float) {
        descriptionBMI = description
        valueBMI = BMI
    }

}
