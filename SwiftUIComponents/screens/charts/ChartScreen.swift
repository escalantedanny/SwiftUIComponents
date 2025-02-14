import SwiftUI

struct ChartScreen: View {
    
    var body: some View {
        
        List(chartsMenuItems, id: \.id) { item in
            NavigationLink(destination: ChartsMenuItemDetail(item: item)) {
                Text(item.title)
            }
        }    }
}

#Preview {
    ChartScreen()
}
