import SwiftUI

struct MenuItemDetail: View {
    let item: MenuItems
    var body: some View {
        switch item.id {
        case 1:
            Text("No Item available yet")
            
        case 2 :
            Text("No Item available yet")
        case 10 :
            BarMarkChartView(barTitle: "Ventas", data: .constant(dataSales))
        default:
            Text("No Item available yet")
        }
    }
}

#Preview {
    MenuItemDetail(item: menuItem[0])
}
