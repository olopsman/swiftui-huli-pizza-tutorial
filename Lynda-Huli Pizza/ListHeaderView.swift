//
//  ListHeaderView.swift
//  Lynda-Huli Pizza
//
//  Created by Paulo Orquillo on 14/03/20.
//  Copyright © 2020 Quonsepto Limited. All rights reserved.
//

import SwiftUI

struct ListHeaderView: View {
    @ObservedObject var orderModel:OrderModel
    var text:String
    var body: some View {
        HStack(alignment: .top) {
            Text(text)
                .padding(.leading, 5)
                .foregroundColor(Color("G2"))
            Spacer()
            Text(orderModel.formattedTotal)
                .fontWeight(.heavy)
                .padding(.trailing)
        }.background(Color("G4"))
        .foregroundColor(Color("IP"))
            .font(.headline)
    }
}


struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(orderModel: OrderModel(), text: "Menu")
    }
}
