//
//  OrderRowView.swift
//  Lynda-Huli Pizza
//
//  Created by Paulo Orquillo on 12/03/20.
//  Copyright © 2020 Quonsepto Limited. All rights reserved.
//

import SwiftUI

struct OrderRowView: View {
    var orderItem:OrderItem
    var body: some View {
        VStack {
            HStack(alignment:.firstTextBaseline){
                Image(systemName: "\(orderItem.id).square")
                Text(orderItem.description)
                    .bold()
                Spacer()
                Text(orderItem.formattedExtendedPrice)
                    .bold()
            }
            Text(orderItem.comments)
        }.animation(.none)
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(orderItem: testOrderItem)
    }
}
