//
//  Constants.swift
//  Sompa
//
//  Created by Park Seyoung on 28/10/16.
//  Copyright © 2016 Park Seyoung. All rights reserved.
//

import Foundation
import CoreLocation

enum AreaCenterCoordinates {
    // lat, lon
    // Add new coordinates from Google
    static let otaniemi = (60.1859386248525, 24.8258086191415)
    static let newYork = (60.1859386248525, 24.8258086191415)
}


enum MapVCConstants {
    static let mapViewFrameSize = ViewFrameSize.fiveOverSix
    static let defaultCenterCoordinate = CLLocationCoordinate2DMake(AreaCenterCoordinates.otaniemi.0, AreaCenterCoordinates.otaniemi.1)
}


enum ViewFrameSize {
    case fiveOverSix
    case fullScreen
    case halfUp
    case halfDown
}
