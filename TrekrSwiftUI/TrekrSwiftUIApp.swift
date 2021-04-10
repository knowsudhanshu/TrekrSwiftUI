//
//  TrekrSwiftUIApp.swift
//  TrekrSwiftUI
//
//  Created by Sudhanshu Sudhanshu on 10/04/21.
//

import SwiftUI

@main
struct TrekrSwiftUIApp: App {
    
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "play.circle.fill")
                    Text("Airplane")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "")
                    Text("Map")
                }
                
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "")
                    Text("Tips")
                    
                }
            }
            .environmentObject(locations)
        }
    }
}
