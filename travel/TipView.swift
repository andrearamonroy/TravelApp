//
//  TipView.swift
//  travel
//
//  Created by Andrea on 5/27/21.
//

import SwiftUI

struct TipView: View {
    let tips: [Tip] //array of Tip []
    
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    
    //id: \.text swift key path means read text property from each tip and use that as a unique identifier
    var body: some View {
        List(tips, id: \.text, children: \.children) { tip in
            if tip.children != nil { //nil is a children is missing
                Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            } else {
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct TipView_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
    }
}
