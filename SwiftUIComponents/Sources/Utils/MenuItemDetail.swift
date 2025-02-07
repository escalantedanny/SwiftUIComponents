//
//  MenuItemDetail.swift
//  SwiftUiComponents
//
//  Created by Jonathan Muñoz on 25-12-24.
//

import SwiftUI

struct MenuItemDetail: View {
    let item: MenuItems
    
    
    var body: some View {
        switch item.id {
        case 1:
            Text("No Item available yet")
            
        case 2 :
            Text("No Item available yet")
        case 6 :
            CarouselScreen()
        default:
            Text("No Item available yet")
        }
    }
}

#Preview {
    MenuItemDetail(item: menuItem[0])
}
