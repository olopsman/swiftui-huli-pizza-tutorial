//
//  PizzaHistoryListView.swift
//  Lynda-Huli Pizza
//
//  Created by Paulo Orquillo on 12/03/20.
//  Copyright © 2020 Quonsepto Limited. All rights reserved.
//

import SwiftUI

struct HistoryListView: View {
    var historyModel = HistoryModel()
    @Binding var imageID:Int
    var body: some View {
        NavigationView{
            List(historyModel.historyItems){item in
                NavigationLink(destination: HistoryDetailView(historyItem: item, imageID: self.$imageID)){
                    HistoryRowView(historyItem: item)
                }
            }
        }
    }
}

struct PizzaHistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView(imageID: .constant(0))
    }
}
