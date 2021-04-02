//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by CNTT on 4/2/21.
//  Copyright © 2021 fit.tdc. All rights reserved.
//

import Foundation

class CalculatorBrain{
    
    private var accumulator:Double?
    
    func setOperand(operand:Double){
        accumulator = operand
    }
    
    func calculate(mathOperator:String){
        switch mathOperator {
        case "∏":
            accumulator = Double.pi
        case "√":
            if let tmp = accumulator{
                accumulator = sqrt(tmp)
            }
        case "e":
            accumulator = M_E
        default:
            break
        }
    }
    
    var result:Double? {
        get{
            if let value = accumulator{
                return value
            }
            return 0
        }
    }
    
}
