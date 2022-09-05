//
//  LandmarkDetail.swift
//  SampleSwiftUIView
//
//  Created by Jefin on 05/09/22.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300.0)
                .edgesIgnoringSafeArea(.top)

            CircleImageView(image: landmark.image)
                .offset(y: -100.0)
                .padding(.bottom, -100.0)
            VStack(alignment: .leading) {
                Text(landmark.name)
                .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text("\(landmark.city), \(landmark.state)")
                }
                .font(.subheadline)
                .foregroundColor(.gray)
                
                Divider()
                Text(landmark.description)
            }
            .padding()
        }
    }
    .navigationTitle(landmark.name)
    .navigationBarTitleDisplayMode(.inline)
 }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
