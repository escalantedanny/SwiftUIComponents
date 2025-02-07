import SwiftUI
import Charts

struct CurstomColorBarMarkView: View {
    
    var barTitle: String
    var barColor: Color
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
                    .foregroundStyle(barColor)
                }
                .frame(height: 180)
            }
            .padding(40)
        }
        
    }

}

#Preview {
        
    CurstomColorBarMarkView(barTitle: "Ventas Dinamicas", barColor: .yellow ,data: .constant(dataSales))
}
