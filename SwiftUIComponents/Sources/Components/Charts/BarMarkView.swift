import SwiftUI
import Charts

struct TransactionsData: Identifiable {
    let id = UUID()
    let category: String
    var count: Double
    var amount: Double
}

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
    @Previewable @State var dataSales: [TransactionsData] = [
        TransactionsData(category: "Debito", count: 100, amount: 2800000),
        TransactionsData(category: "Credito", count: 695, amount: 6800000),
        TransactionsData(category: "Efectivo", count: 175, amount: 3800000)
    ]
    
    return BarMarkChartView(barTitle: "Ventas Mensuales", data: .constant(dataSales))
}
