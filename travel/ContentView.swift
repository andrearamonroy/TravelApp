//
//  ContentView.swift
//  travel
//
//  Created by Andrea on 5/21/21.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        //VStack: Vertical Stack: to place items vertically, without it the text would be on a different iPhone or a different screen.
        
        //Changed it to ScrollView because there is too much text on the screen and Swift was trying to squeeze all of it in one view screen (with VStack). Scrollview you are able to scroll up and down.
        ScrollView{
            Image(location.heroPicture)
            .resizable() //modifier to strech an image
            .scaledToFit() //modifier same as using "aspectRatio" fits the screen
        
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary) //better than specifying a color since this adapts to different iPhones
            
            Text(location.description)
                .padding(.horizontal)
            // /" before and after quotations if its inside the text.
            
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top) //wihtout .top you get padding all around the text, .top padding only on the top.
            
            Text(location.more)
                .padding(.horizontal)
            
            Text(location.advisory)
            
        }
        .navigationTitle("Discover")
    }
}

//this data struc is for the content to show on the preview and not just on the emulator
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(location: Location.example)
        }
    }
}
