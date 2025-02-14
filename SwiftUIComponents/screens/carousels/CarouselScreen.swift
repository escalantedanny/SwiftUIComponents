//
//  CarouselScreen.swift
//  SwiftUIComponents
//
//  Created by Jonathan Muñoz on 06-02-25.
//

import SwiftUI

struct CarouselScreen: View {
    var body: some View {
        List(carouselsMenuItems, id: \.id) { item in
            NavigationLink(destination: CarouselMenuItemDetail(item: item)) {
                Text(item.title)
            }
        }
    }
}

#Preview {
    CarouselScreen()
}
