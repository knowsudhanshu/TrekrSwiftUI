//
//  TipsView.swift
//  TrekrSwiftUI
//
//  Created by Sudhanshu Sudhanshu on 10/04/21.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
        
    }
    
    var body: some View {
        
        List(tips, id: \.text, children: \.children) { tip in
            if tip.children != nil {
                Label(
                    title: { Text(tip.text) },
                    icon: { Image(systemName: "42.circle") })
            }else {
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
    
}
