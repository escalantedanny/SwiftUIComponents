import SwiftUI

struct MenuItems : Hashable{
    var id: Int
    let title: String
}

let mainMenuItem: [MenuItems] = [
    MenuItems(id: 1, title: "App TextField"),
    MenuItems(id: 2, title: "App Buttons"),
    MenuItems(id: 3, title: "App Cards"),
    MenuItems(id: 4, title: "App Check Box"),
    MenuItems(id: 5, title: "App Radio button"),
    MenuItems(id: 6, title: "App Carousels"),
    MenuItems(id: 7, title: "App Dialogs"),
    MenuItems(id: 8, title: "App Toggles"),
    MenuItems(id: 9, title: "App DropDown"),
    MenuItems(id: 10, title: "App Charts")

]

let chartsMenuItem: [MenuItems] = [
    MenuItems(id: 1, title: "BarChart"),
    MenuItems(id: 2, title: "BubbleChart"),
    MenuItems(id: 3, title: "CandleStickChart"),
    MenuItems(id: 4, title: "Combined-Chart"),
    MenuItems(id: 5, title: "LineChart"),
    MenuItems(id: 6, title: "PieChart"),
    MenuItems(id: 7, title: "RadarChart"),
    MenuItems(id: 8, title: "ScatterChart")
]
