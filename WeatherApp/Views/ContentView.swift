//
//  ContentView.swift
//  WeatherApp
//
//  Created by Francisco Vera Nicola on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                Text("Your coordinates are: \(location.longitude), \(location.latitude)")
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
                    
            }
      
        }
        .background(Color(hue: 0.631, saturation: 0.897, brightness: 0.805))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
