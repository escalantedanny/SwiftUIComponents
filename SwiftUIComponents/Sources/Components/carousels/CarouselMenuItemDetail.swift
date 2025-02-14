//
//  CarouselMenuItemDetail.swift
//  SwiftUIComponents
//
//  Created by Jonathan Muñoz on 13-02-25.
//

import Foundation
import SwiftUI

struct CarouselMenuItemDetail: View {
    let item: MenuItems
    
    var body: some View {
        switch item.id {
        case 1:
            CarouselAutoScrollScreen()
        case 2 :
            Carousel3dScreen()
        case 3 :
            Text("No Item CandleStickChart available yet")
        case 4 :
            Text("No Item Combined-Chart available yet")
        
        default:
            Text("No Item LineChart available yet")
        }
    }
}
