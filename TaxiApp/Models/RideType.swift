//
//  RideType.swift
//  TaxiApp
//
//  Created by Joe on 2024-07-29.
//

import SwiftUI

enum RideType: Int, CaseIterable, Identifiable {
    case taxi
    case black
    case van
    
    var id: Int { return rawValue }
    
    var description: String {
        switch self {
        case .taxi: return "Taxi"
        case .black: return "Black"
        case .van: return "Van"
        }
    }
    
    var imageName: String {
        switch self {
        case .taxi: return "Taxi"
        case .black: return "Black"
        case .van: return "Van"
        }
    }
    
    var baseFare: Double {
        switch self {
        case .taxi: return 5
        case .black: return 20
        case .van: return 10
        }
    }
    
    func computePrice(for distanceInMeters: Double) -> Double {
        let distanceInMiles = distanceInMeters / 1600
        
        switch self {
        case .taxi: return distanceInMiles * 1.5 + baseFare
        case .black: return distanceInMiles * 2.0 + baseFare
        case .van: return distanceInMiles * 1.75 + baseFare
        }
    }
}


