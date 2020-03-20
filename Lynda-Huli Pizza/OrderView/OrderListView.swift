//
//  OrderListView.swift
//  Lynda-Huli Pizza
//
//  Created by Paulo Orquillo on 12/03/20.
//  Copyright © 2020 Quonsepto Limited. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    var orderModel:OrderModel
    var body: some View {
        VStack {
            ListHeaderView(orderModel:orderModel, text: "Your Order")
            List(orderModel.orders) {item in
                OrderRowView(orderItem: item)
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}
