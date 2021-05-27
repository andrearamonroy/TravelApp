//
//  travelApp.swift
//  travel
//
//  Created by Andrea on 5/21/21.
//

import SwiftUI

@main
struct travelApp: App {
    @StateObject var locations = Locations()
    //create once and pass it to content view.
    //wrap it so swift keeps it live and updates it, because we have observableObjects in Locations @StateObject is required if not only @State works.
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)//so the content on the app doesnt overlap with the the time and wifi at the top of the iPhone.
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill") //built in icon from SF symbols
                    Text("Discover")
                }
                
                NavigationView{
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                
                NavigationView{
                    TipView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations) //so you can read locations from anywhere in the app without loading the json file again and again
        }
    }
}
