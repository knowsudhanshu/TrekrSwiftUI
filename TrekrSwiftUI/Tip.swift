//
//  Tip.swift
//  TrekrSwiftUI
//
//  Created by Sudhanshu Sudhanshu on 10/04/21.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
    
}
