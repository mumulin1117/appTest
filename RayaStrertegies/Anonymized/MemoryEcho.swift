//
//  MemoryEcho.swift
//  RayaStrertegies
//
//  Created by  on 2025/11/3.
//

import UIKit

struct MemoryEcho {
    let resonanceId: String
    let timestamp: Date
    let achievementTitle: String
    let emotionalResonance: Float
    let memoryEra: MemoryEra
    let highlightData: HighlightData
}

struct TimelineNode {
    let memoryEcho: MemoryEcho
    let nodePosition: TimelinePosition
    let resonanceStrength: Int
}
