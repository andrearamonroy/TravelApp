//
//  Locations.swift
//  travel
//
//  Created by Andrea on 5/23/21.
//

import Foundation

//two ways to make costum data structures 1.struc 2.class
//Struc: doesn't let you share data across the app
//Class: let's load data once and share across all the app have more power than struc

//Obsevable object is like ContentView that let's you see it on swuiftUI
//it will let you see the changes
//let places: immutable variable
class Locations : ObservableObject {
    let places : [Location] //without brakets it means that it holds one location, with means there is a new data type called an array which holds many locations
    
    //at runtine run the json file and return the first item 
    var primary : Location {
        places[0]
    }
    
    init() { //let url finds .json in IOS bundle and the ! at the end means if this doesnt work crash the app and return user to home screen of the iPhone
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")! //finds locations
        let data = try! Data(contentsOf: url) //store locations info in the "data" variable and now we can work with the conent in the json file
        places = try! JSONDecoder().decode([Location].self, from: data) //JSONDecoder converts data from json to swift and then it places into an array called Location, .self is required
        
        //find, read, decode
    }
}
