//
//  MemoryEra.swift
//  RayaStrertegies
//
//  Created by  on 2025/11/3.
//

import UIKit
struct HighlightData {
    let duration: TimeInterval
    let intensity: Float
    let participantCount: Int
}
enum MemoryEra: Int, CaseIterable {
    case recent, legendary, historic, milestone
    
    var displayName: String {
        switch self {
        case .recent: return "Now"
        case .legendary: return "Legend"
        case .historic: return "History"
        case .milestone: return "Milestones"
        }
    }
}
