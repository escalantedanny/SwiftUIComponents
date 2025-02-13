import SwiftUI

struct ContentChart: View {
    
    var body: some View {
        
        List(chartsMenuItems, id: \.id) { item in
            NavigationLink(destination: ChartsMenuItemDetail(item: item)) {
                Text(item.title)
            }
        }    }
}

#Preview {
    ContentChart()
}
