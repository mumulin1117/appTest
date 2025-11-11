//
//  TressPortfolioItem.swift
//  LuvioPamere
//
//  Created by  on 2025/8/9.
//

import UIKit

struct TressPortfolioItem: Identifiable {
    let id: UUID
    let creationDate: Date
    var styleTitle: String
    var styleDescription: String
    var textureType: CurlPattern
    var colorPalette: [StyleHue]
    var tags: [String]
    var isFeatured: Bool
    var inspirationWord: String?
}
enum CurlPattern: String, CaseIterable {
    case silkenWave = "Waterfall Flow"
    case tightCoil = "Spring Coil"
    case looseSway = "Ocean Sway"
    case zigZag = "Lightning Bolt"
    case undefined = "Mystery Texture"
}

enum StyleHue: String, CaseIterable {
    case midnightEbony = "Ebony Night"
    case sunriseBlonde = "Golden Dawn"
    case rubyRadiance = "Ruby Glow"
    case emeraldDream = "Emerald Mist"
    case unicornShift = "Prism Shift"
}
