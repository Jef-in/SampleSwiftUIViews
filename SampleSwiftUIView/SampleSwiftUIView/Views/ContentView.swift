//
//  ContentView.swift
//  SampleSwiftUIView
//
//  Created by Jefin on 03/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 200.0)
                .edgesIgnoringSafeArea(.top)
            
            CircleImageView()
                .offset(y: -100.0)
                .padding(.bottom, -100.0)
            VStack(alignment: .leading) {
            Text("Louvre Museum")
                .font(.title)
                HStack {
                    Text("Art Museum")
                    Spacer()
                    Text("Paris, France")
                }
                .font(.subheadline)
                .foregroundColor(.gray)
            }
            .padding()
        }
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
