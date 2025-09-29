//
//  EhaviorPatterns.swift
//  RayaStrertegies
//
//  Created by RayaStrertegies on 2025/7/3.
//

import UIKit

struct EhaviorPatterns {
    var humanCentered:String = ""
    
    var usabilityPrinciples = Dictionary<String,Any>()
    var userCentric:String = ""
    static var tournamentBA: Int? {
        get { UserDefaults.standard.object(forKey: "tournamentBA") as? Int }
        set { UserDefaults.standard.set(newValue, forKey: "tournamentBA") }
    }
    
}
