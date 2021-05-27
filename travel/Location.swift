// 
//  Location.swift
//  travel
//
//  Created by Andrea on 5/23/21.
//

import Foundation

//new data structure called location
struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double //floating point number .0000 holds big numbers after decimal point
    let heroPicture: String
    let advisory: String
    
    //this let us test the info we are pulling from the .json file on the preview
    //without it we would only we able to see if the data struc is working when we run the emulator.
    //static to make only one and get rid of the recursive error
    static let example = Location(id: 1, name: "Great smokey mountains", country: "United States", description: "A great place to visit.", more: "More text here.", latitude: 25.6532, longitude: -83.3345, heroPicture: "smokies", advisory: "Beware of the bears!")
}
