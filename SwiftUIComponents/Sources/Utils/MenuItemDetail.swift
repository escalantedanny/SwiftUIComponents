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
        case 10 :
            ChartScreen()

        default:
            Text("No Item available yet")
        }
    }
}
