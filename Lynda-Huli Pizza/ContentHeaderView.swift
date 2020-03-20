//
//  ContentHeaderView.swift
//  Lynda-Huli Pizza
//
//  Created by Paulo Orquillo on 12/03/20.
//  Copyright © 2020 Quonsepto Limited. All rights reserved.
//

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
        VStack {
            ZStack{
                Image("Surf Board")
                    .resizable()
//                    .scaledToFit()
                    .frame(minWidth:300, idealWidth: 400, maxWidth: 500, minHeight: 100, idealHeight: 140, maxHeight: 150, alignment: .center)
                Text("Huli Pizza Company")
                    .offset(x:-20, y:30)
                    .font(Font.custom("Avinir-Black", size: 20))
                    .foregroundColor(.white)
                

            }
        }
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView()
    }
}


