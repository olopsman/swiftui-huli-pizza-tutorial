//
//  MenuRowView.swift
//  Lynda-Huli Pizza
//
//  Created by Paulo Orquillo on 12/03/20.
//  Copyright © 2020 Quonsepto Limited. All rights reserved.
//

import SwiftUI

struct MenuRowView: View {
    var menuItem:MenuItem = testMenuItem
    var body: some View {
        VStack(alignment:.leading) {
            HStack(alignment: .top, spacing:15) {
                Image("\(menuItem.id)_100w")
                    //.cornerRadius(10)
                .clipShape(Circle())
                    .shadow(radius: 10)
                VStack(alignment: .leading){
                    Text(menuItem.name)
                        .font(.title)
                        .fontWeight(.light)
                    RatingsView(count: menuItem.rating)
                }
    //            Spacer()
            }
            Text(menuItem.description)
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(menuItem:MenuModel().menu[2])
    }
}

