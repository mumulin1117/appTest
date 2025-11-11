//
//  CrownChallenge.swift
//  LuvioPamere
//
//  Created by  on 2025/8/9.
//

import UIKit

struct CrownChallenge {
    let challengeID: String
    let themeName: String
    let inspirationKeywords: [String]
    let difficulty: TressDifficulty
    let expirationDate: Date
    var isCompleted: Bool = false
}
enum TressDifficulty: String, CaseIterable {
    case beginner = "Silk Touch"
    case intermediate = "Lace Artisan"
    case advanced = "Weave Virtuoso"
}
