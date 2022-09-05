//
//  CircleImageView.swift
//  SampleSwiftUIView
//
//  Created by Jefin on 03/09/22.
//

import SwiftUI

struct CircleImageView: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .frame(width: 200.0, height: 200.0)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray)
            }
            .shadow(radius: 5)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("turtlerock"))
    }
}
