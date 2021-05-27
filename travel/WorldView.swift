//
//  WorldView.swift
//  travel
//
//  Created by Andrea on 5/26/21.
//

import MapKit
import SwiftUI

struct WorldView: View { //@State is a property wrapper
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion(
        center:CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), //CL core location
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40) //how much of the map to show, zoom in
    )
    //two way binding, read and if we make changes update the value to reflect those changes, done with the $
    var body: some View {
        Map (coordinateRegion: $region,
             annotationItems: locations.places){
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)){
                //navigation link to tap on a map and send info from ContentView
                NavigationLink(destination:
                                ContentView(location: location)){
                    Image(location.country) //display country flag on map
                        .resizable()
                        .cornerRadius(10) //modifier so flag is not a square but a circle
                        .frame(width:80, height: 40) //size of flag
                        .shadow(radius: 3) //to have a shadow around flag
                }
            }
        }
            .navigationTitle("Locations")
            }
    }


struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
