
struct TransactionsData: Identifiable {
    let id : Int
    let category: String
    var count: Double
    var amount: Double
}

//Provitional data
var dataSales: [TransactionsData] = [
    TransactionsData(id: 1, category: "Debito", count: 100, amount: 2800000),
    TransactionsData(id: 2, category: "Credito", count: 695, amount: 6800000),
    TransactionsData(id: 3, category: "Efectivo", count: 175, amount: 3800000),
    TransactionsData(id: 4, category: "Hites", count: 59, amount: 251021),
    TransactionsData(id: 5, category: "Sodexo", count: 26, amount: 563900),
    TransactionsData(id: 6, category: "Pac", count: 221, amount: 95100),
]

