//
//  WeatherManager.swift
//  Weatherly
//
//  Created by Adil Rahmani on 12/4/24.
//

import Foundation
import CoreLocation

class WeatherManager {
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws{
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\(Constants.apiKey)&units=metric") else { fatalError("Invalid URL")}
    }
}
