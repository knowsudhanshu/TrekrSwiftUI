//
//  ContentView.swift
//  TrekrSwiftUI
//
//  Created by Sudhanshu Sudhanshu on 10/04/21.
//

import SwiftUI

struct ContentView: View {
    
    let location: Location
    
    var body: some View {
        ScrollView {
            ZStack {
                Image(location.heroPicture)
                    .resizable()
                    .scaledToFit()
                Text(location.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .shadow(color: .white, radius: 10)
                    
            }
            Text(location.country)
                .font(.title)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding(.bottom)
            
            Text(location.description)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            
            Text(location.advisory)
                .font(.title)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            NavigationView {
                ContentView(location: Locations().primary)
            }
            .tabItem {
                Image(systemName: "play.circle.fill")
                Text("Airplane")
            }
        }
        
    }
}
