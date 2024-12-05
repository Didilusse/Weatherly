//
//  ContentView.swift
//  Weatherly
//
//  Created by Adil Rahmani on 12/4/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                Text("Your Coordinates are \(location.latitude), \(location.longitude)")
            } else{
                if locationManager.isLoading {
                    LoadingView()
                }else{
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
            
            
        }
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
