//
//  Landmark.swift
//  SampleSwiftUIView
//
//  Created by Jefin on 03/09/22.
//

import CoreLocation
import Foundation
import SwiftUI

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longtitude)
    }
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longtitude: Double
    }
}
