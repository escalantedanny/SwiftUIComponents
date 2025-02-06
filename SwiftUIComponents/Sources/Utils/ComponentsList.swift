

import SwiftUI

struct ComponentsList: View {
    
    var body: some View {
        NavigationView {
            ViewsList()
            .navigationTitle("Menú")
        }
    }
    
}

#Preview {
    ComponentsList()
}
