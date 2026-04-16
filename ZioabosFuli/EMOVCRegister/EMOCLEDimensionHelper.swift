//
//  EMOCLEDimensionHelper.swift
//  ZioabosFuli
//
//  Created by  on 2026/4/9.
//

import UIKit

struct EMOCLEDimensionHelper {
    static let screenWidthEMOCLE = UIScreen.main.bounds.width
    static let adaptiveScaleEMOCLE = screenWidthEMOCLE / 375.0
    
    static func scaleEMOCLE(_ value: CGFloat) -> CGFloat {
        return value * adaptiveScaleEMOCLE
    }
}
