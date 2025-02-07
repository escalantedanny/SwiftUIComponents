import SwiftUI

struct BarsView: View {
    var body: some View {
        ScrollView  {
            VStack {
                Text(" Component name = BlueBarMarkView")
                    .font(.caption)
                BlueBarMarkView(barTitle: "Title of Bar", data: .constant(dataSales))
                Text(" Component name = RedBarMarkView")
                    .font(.caption)
                RedBarMarkView(barTitle: "Title of Bar", data: .constant(dataSales))
                Text(" Component name = CurstomColorBarMarkView")
                    .font(.caption)
                CurstomColorBarMarkView(barTitle: "Ventas Dinamicas", barColor: .green ,data: .constant(dataSales))
            }
        }
    }
}

#Preview {
    BarsView()
}
