//
//  RootTabView.swift
//  Lynda-Huli Pizza
//
//  Created by Paulo Orquillo on 18/03/20.
//  Copyright © 2020 Quonsepto Limited. All rights reserved.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            ContentView(orderModel: OrderModel())
                .tabItem{
                    Image(systemName:"cart")
                    Text("Order")
            }
            HistoryView(imageID: 0)
                .tabItem{
                    Image(systemName: "book")
                    Text("History")
            }
        .accentColor(Color("B1"))
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
        .environmentObject(UserPreferences())
    }
}
