//
//  CircleImageView.swift
//  SampleSwiftUIView
//
//  Created by Jefin on 03/09/22.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("Museum")
            .resizable()
            .frame(width: 120.0, height: 120.0)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray)
            }
            .shadow(radius: 5)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
