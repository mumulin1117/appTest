//
//  StreetMomentLRNear.swift
//  Streperfoforming
//
//  Created by  on 2025/10/16.
//

import UIKit
struct StreetMomentLRNear {
    let publicArtistryid: String
    let momentType: MomentType
    let content: String
    let mediaURL: String?
    let timestamp: Date
    let location: String
    let audienceReactions: [String: Int]
    
    var fcollectiveTalentdTimestamp: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: timestamp)
    }
}
enum MomentType {
    case behindTheScenes, livePerformance, practiceSession, audienceInteraction
}
