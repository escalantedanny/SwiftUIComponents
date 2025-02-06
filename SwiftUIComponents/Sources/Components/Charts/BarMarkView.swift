import SwiftUI
import Charts

struct BarMarkChartView: View {
    
    var barTitle: String
    @Binding var data: [TransactionsData]

    var body: some View {
        VStack {
            Text(barTitle)
                .font(.title)
                .padding()

            Chart(data) { item in
                BarMark(
                    x: .value("Tipo", item.category),
                    y: .value("Cantidad", item.count)
                )
                .foregroundStyle(.blue)
            }
            .frame(height: 300)
            .padding()

        }
    }

}

#Preview {
        
    BarMarkChartView(barTitle: "Ventas Dinamicas", data: .constant(dataSales))
}
