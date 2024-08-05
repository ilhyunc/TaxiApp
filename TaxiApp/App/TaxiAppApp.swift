//
//  TaxiAppApp.swift
//  TaxiApp
//
//  Created by Joe on 2024-07-22.
//

import SwiftUI

@main
struct TaxiAppApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
