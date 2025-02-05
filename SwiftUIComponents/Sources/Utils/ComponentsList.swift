

import SwiftUI

struct ComponentsList: View {
    
    @State private var isToggleOn = false
    @State private var showAlert = false
    
    var menuItems: [MenuItem] {
            return [
                MenuItem(title: "Buttons", icon: "", type: .navigation(destination: AnyView( SimpleButtonView() ))),
                MenuItem(title: "Cards", icon: "", type: .navigation(destination: AnyView(Text("Cards")))),
                MenuItem(title: "Alerts", icon: "", type: .navigation(destination: AnyView(Text("Alerts")))),
                MenuItem(title: "Badge", icon: "", type: .navigation(destination: AnyView(Text("Badge")))),
            ]
        }
    
    var body: some View {
        NavigationView {
            List(menuItems) { item in
                menuItemView(item)
            }
            .navigationTitle("Menú")
            .alert(isPresented: $showAlert) {
                Alert(title: Text("¡Atención!"), message: Text("Este es un mensaje de alerta"), dismissButton: .default(Text("OK")))
            }
        }
    }
    
    @ViewBuilder
        func menuItemView(_ item: MenuItem) -> some View {
            switch item.type {
            case .button(let action):
                Button(action: action) {
                    Label(item.title, systemImage: item.icon ?? "circle")
                }
                
            case .toggle(let isOn):
                Toggle(isOn: isOn) {
                    Label(item.title, systemImage: item.icon ?? "circle")
                }
                
            case .alert(_, _, _):
                Button {
                    showAlert = true
                } label: {
                    Label(item.title, systemImage: item.icon ?? "circle")
                }
                
            case .navigation(let destination):
                NavigationLink(destination: destination) {
                    Label(item.title, systemImage: item.icon ?? "circle")
                }
            }
        }
    
    
}

#Preview {
    ComponentsList()
}
