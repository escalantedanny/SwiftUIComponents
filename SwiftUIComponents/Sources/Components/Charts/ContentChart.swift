import SwiftUI

struct ContentChart: View {
    
    var body: some View {
        
        List(chartsMenuItem, id: \.id){ item in
            NavigationLink(destination: ChatsMenuItemDetail(item: item)){
                Text(item.title)
            }
        }
    }
}

#Preview {
    ContentChart()
}
