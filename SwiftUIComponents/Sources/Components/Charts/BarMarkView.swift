import SwiftUI
import Charts

struct TransactionsData: Identifiable {
    let id : Int
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
        TransactionsData(id: 1, category: "Debito", count: 100, amount: 2800000),
        TransactionsData(id: 2, category: "Credito", count: 695, amount: 6800000),
        TransactionsData(id: 3, category: "Efectivo", count: 175, amount: 3800000)
    ]
    
    BarMarkChartView(barTitle: "Ventas Dinamicas", data: .constant(dataSales))
}
