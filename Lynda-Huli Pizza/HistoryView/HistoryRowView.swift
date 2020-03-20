//
//  HistoryRowView.swift
//  Lynda-Huli Pizza
//
//  Created by Paulo Orquillo on 14/03/20.
//  Copyright © 2020 Quonsepto Limited. All rights reserved.
//

import SwiftUI

struct HistoryRowView: View {
    var historyItem:HistoryItem
    var body: some View {
        HStack(alignment:.top){
            Image("\(historyItem.id)_100w")
            .clipShape(Circle())
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text("\(historyItem.name)")
            .font(.title)
            Spacer()
        }.overlay(
            Image(systemName: "chevron.right.square")
              .padding()
              .font(.title)
              .foregroundColor(Color("G3"))
            , alignment:.trailing
        )
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView(historyItem: HistoryModel().historyItems[0])
    }
}
