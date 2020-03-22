//
//  MapView.swift
//  Lynda-Huli Pizza
//
//  Created by Paulo Orquillo on 22/03/20.
//  Copyright © 2020 Quonsepto Limited. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var latitude:Double
    var longitude:Double
    var regionRadius:Double
    
    func makeUIView(context: Context) -> MKMapView {       
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        view.setRegion(MKCoordinateRegion(center: coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius),animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        view.addAnnotation(annotation)
       
    }
    
}

//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}
