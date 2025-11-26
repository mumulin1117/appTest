//
//  RackHubPracticeSession.swift
//  RockOudbn
//
//  Created by mumu on 2025/11/26.
//

import UIKit

struct RackHubPracticeSession {
    let date: Date
    var shots: [RackHubShotAnalysis] = []
    
    mutating func addShot(_ analysis: RackHubShotAnalysis) {
        shots.append(analysis)
    }
    
    func sessionSummary() -> String {
        let totalShots = shots.count
        let successfulShots = shots.filter { $0.predictedOutcome == "Pocketed" }.count
        return "Session: \(totalShots) shots, \(successfulShots) pocketed."
    }
}
