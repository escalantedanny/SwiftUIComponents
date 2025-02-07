import SwiftUI

struct BarsView: View {
    var body: some View {
        ScrollView  {
            VStack {
                Text(" Component name = BarMarkBlueView")
                    .font(.caption)
                BarMarkBlueView(barTitle: "Title of Bar", data: .constant(dataSales))
            }
        }
    }
}

#Preview {
    BarsView()
}
