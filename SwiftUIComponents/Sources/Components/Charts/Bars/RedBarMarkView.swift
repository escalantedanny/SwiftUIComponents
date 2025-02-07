import SwiftUI
import Charts

struct RedBarMarkView: View {
    
    var barTitle: String
    @Binding var data: [TransactionsData]

    var body: some View {
        VStack {
            Text(barTitle)
                .font(.title)
                .padding()

            HStack {
                Chart(data) { item in
                    BarMark(
                        x: .value("Tipo", item.category),
                        y: .value("Cantidad", item.count)
                    )
                    .foregroundStyle(.red)
                }
                .frame(height: 180)
            }
            .padding(40)
        }
        
    }

}

#Preview {
        
    RedBarMarkView(barTitle: "Ventas Dinamicas", data: .constant(dataSales))
}
