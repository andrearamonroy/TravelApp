//
//  Tip.swift
//  travel
//
//  Created by Andrea on 5/27/21.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]? //be an array of Tip because in the tips.json children has "text" inside, question mark means that the children might or might not be there
    
}
