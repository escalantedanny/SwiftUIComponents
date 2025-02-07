import SwiftUI
import Charts

struct StaticColorBarMarkView: View {
    
    var barTitle: String
    var color: Color
    @Binding var data: [TransactionsData]

    var body: some View {
        VStack {
            Text(barTitle)
                .font(.title)

            HStack {
                Chart(data) { item in
                    BarMark(
                        x: .value("Tipo", item.category),
                        y: .value("Cantidad", item.count)
                    )
                    .cornerRadius(8)
                    .foregroundStyle(color)
                }
                .frame(height: 180)
            }
            .padding(40)
        }
        
    }

}

#Preview {
        
    StaticColorBarMarkView(barTitle: "Ventas Dinamicas", color: .blue, data: .constant(dataSales))
}
