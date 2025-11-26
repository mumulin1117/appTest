//
//  RackHubShotAnalysis.swift
//  RockOudbn
//
//  Created by  on 2025/11/26.
//

import UIKit

class CUEBOSHTWRackHubShotAnalysis: NSObject {

}
struct RackHubShotAnalysis {
    let cueAngle: Double       // Angle of the cue stick
    let shotPower: Double      // Power applied to the shot
    let predictedOutcome: String // e.g., "Pocketed", "Missed", "Near Pocket"
    let tip: String            // AI generated improvement tip
}
