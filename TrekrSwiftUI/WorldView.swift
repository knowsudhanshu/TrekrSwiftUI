//
//  WorldView.swift
//  TrekrSwiftUI
//
//  Created by Sudhanshu Sudhanshu on 10/04/21.
//

import MapKit
import SwiftUI

struct WorldView: View {
    
    @EnvironmentObject var locations: Locations
    
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.50333, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $region, annotationItems: locations.places) { location in
                
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                    
                    NavigationLink(
                        destination: ContentView(location: location),
                        label: {
                            
                            Image(location.country)
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 80, height: 40)
                                .shadow(radius: 3)
                        })
                    
                    
                }
                
            }
        }
        .navigationTitle("Location")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
