//
//  CUEBOSHTWPhotoParameters.swift
//  RockOudbn
//
//  Created by RockOudbn on 2025/7/30.
//

import UIKit
struct CUEBOSHTWPhotoParameters {
    let shutterSpeed: Double // in seconds (e.g., 1/125 = 0.008)
    let aperture: Double // f-stop value
    let iso: Int
    let movement: Bool // whether subject is moving
    let subjectIsolation: Bool // whether isolating subject is important
}
