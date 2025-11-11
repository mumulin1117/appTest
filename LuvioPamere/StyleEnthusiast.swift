//
//  StyleEnthusiast.swift
//  LuvioPamere
//
//  Created by  on 2025/8/9.
//

import UIKit

enum StyleValidationResult {
    case success
    case needsMoreCreativity
    case expired
}

struct StyleEnthusiast {
    let userID: String
    var completedChallenges: Int = 0
    var favoriteThemes: [String] = []
}
