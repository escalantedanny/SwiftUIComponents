import SwiftUI

struct MenuItem: Identifiable {
    let id = UUID()
    let title: String
    let icon: String?
    let type: MenuItemType
}

enum MenuItemType {
    case button(action: () -> Void)
    case toggle(isOn: Binding<Bool>)
    case alert(title: String, message: String, buttonText: String)
    case navigation(destination: AnyView)
}

