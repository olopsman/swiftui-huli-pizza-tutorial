//
//  RatingsView.swift
//  Lynda-Huli Pizza
//
//  Created by Paulo Orquillo on 12/03/20.
//  Copyright © 2020 Quonsepto Limited. All rights reserved.
//

import SwiftUI

struct RatingsView: View {
    var count:Int = 4
    var rating:[String] {
        let symbolName = "\(count).circle" //specific to sf symbol
        return Array(repeating: symbolName, count: count)
    }
    var body: some View {
        HStack {
            ForEach(rating, id: \.self){item in
                Image(systemName: item)
                    .font(.headline)
                .foregroundColor(Color("G4"))
            }
        }
    }
}


struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(count:5)
    }
}
