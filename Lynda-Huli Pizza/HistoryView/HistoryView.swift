//
//  PizzaHistoryView.swift
//  Lynda-Huli Pizza
//
//  Created by Paulo Orquillo on 12/03/20.
//  Copyright © 2020 Quonsepto Limited. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
    @State var imageID:Int
    var body: some View {
        VStack {
//                ContentHeaderView()
            PageTitleView(title: "Pizza History")
                SelectedImageView(image:"\(imageID)_250w")
                    .padding(5)
            HistoryListView(imageID: $imageID)
                Spacer()
            }
            
        }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            HistoryView(imageID: 0)
            HistoryView(imageID: 0)
            .colorScheme(.dark)
            .background(Color.black)
        }
    }
}
