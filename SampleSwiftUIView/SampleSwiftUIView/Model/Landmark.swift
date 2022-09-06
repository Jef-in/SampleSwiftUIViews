//
//  Landmark.swift
//  SampleSwiftUIView
//
//  Created by Jefin on 03/09/22.
//

import CoreLocation
import Foundation
import SwiftUI

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var city: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude ?? 0.0, longitude: coordinates.longtitude ?? 0.0)
    }
    struct Coordinates: Hashable, Codable {
        var latitude: Double?
        var longtitude: Double?
    }
}
