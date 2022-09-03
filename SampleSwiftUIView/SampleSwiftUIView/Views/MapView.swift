//
//  MapView.swift
//  SampleSwiftUIView
//
//  Created by Jefin on 03/09/22.
//

import MapKit
import SwiftUI

struct MapView: View {
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.860294, longitude: 2.3376), latitudinalMeters: 0.2, longitudinalMeters: 0.2)
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
