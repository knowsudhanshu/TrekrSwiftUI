//
//  Location.swift
//  TrekrSwiftUI
//
//  Created by Sudhanshu Sudhanshu on 10/04/21.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    
    static let example = Location(id: 1, name: "Great smokey Mountains", country: "United States", description: "A great place to visit", more: "There is more", latitude: 35.232, longitude: -83.324, heroPicture: "smokies", advisory: "Beware of the bears!")
}
