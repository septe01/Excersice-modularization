//
//  CartView.swift
//  Cart
//
//  Created by septe habudin on 24/12/22.
//

import SwiftUI
//
//struct CartView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}

//struct CartView_Previews: PreviewProvider {
//    static var previews: some View {
//        CartView()
//    }
//}

public struct CartView<Destination: View>: View {
    let action: (()-> Destination)

    public init(action: @escaping () -> Destination) {
        self.action = action
    }

    public var body: some View {
        VStack {
            NavigationLink(destination: self.action()) {
                Text("Open Product Detail")
            }
        }.navigationTitle("Cart")
    }

}


