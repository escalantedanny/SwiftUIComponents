import SwiftUI

struct ContentChart: View {
    
    @State var percentage: Double = 1
    
    var body: some View {
        
        ScrollView  {
            VStack {
                Text(" Component name = BarMarkBlueView")
                    .font(.caption)
                BarMarkBlueView(barTitle: "Title of Bar", data: .constant(dataSales))
                VStack() {
                    Text(" Component name = CakeBarView")
                        .font(.caption)
                    Slider(value: $percentage, in: 0...100, step: 1)
                        .frame(width: 250)
                    CakeBarView(color: .yellow, percentage: $percentage)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentChart()
}
