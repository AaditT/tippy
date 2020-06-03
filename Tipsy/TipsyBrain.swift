//
//  TipsyBrain.swift
//  Tipsy
//
//  Created by Aadit Trivedi on 6/3/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

struct TipsyBrain {
    
    var tip: Tip?
    
    mutating func calculateTip(bill: Double, tipVal: Double, splitNumber: Int, tipDisplay: Int) {
        let perPerson: Double = ((bill * tipVal) / (Double(splitNumber)))
        let settingString = "Split between \(splitNumber) people, with \(tipDisplay)% tip"
        tip = Tip(perPersonVal: perPerson, settingVal: settingString, tipVal: tipVal, tipDisplay: tipDisplay)
    }
    
    func getPerPersonVal() -> String {
        return String(format: "%.2f", tip?.perPersonVal as! CVarArg)
    }
    
    func getSettingString() -> String {
        return tip?.settingVal ?? "Void setting"
    }
    
}
