//
//  SelectedImageView.swift
//  Lynda-Huli Pizza
//
//  Created by Paulo Orquillo on 14/03/20.
//  Copyright © 2020 Quonsepto Limited. All rights reserved.
//

import SwiftUI

struct SelectedImageView: View {
    var image:String
    var body: some View {
        Image("1_250w")
            .resizable()
            .scaledToFit()
            .cornerRadius(30)
            .shadow(color: .black, radius:10, x:5, y:5)
        
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(image:"1_250w")
    }
}
