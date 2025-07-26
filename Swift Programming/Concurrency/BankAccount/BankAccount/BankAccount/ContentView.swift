//
//  ContentView.swift
//  BankAccount
//
//  Created by Pavan Kumar J on 07/06/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var amount: String = ""
    @StateObject private var viewModel: BankAccountViewModel = BankAccountViewModel(amount: 500)
    
    var queue = DispatchQueue(label: "com.bank.com.queue", attributes: .concurrent)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            TextField("Enter amount", text: $amount)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
            List(0..<100) { _ in
                Text("Balance: \(viewModel.balance)")
            }.listStyle(PlainListStyle())
            HStack {
                Button {
                    viewModel.withDraw(amount: Double(amount) ?? 0.0)
                } label: {
                    Text("Withdraw")
                        .font(.headline)
                }
                Spacer()
                Button {
                    viewModel.balanceAmount()
                } label: {
                    Text("Balance")
                        .font(.headline)
                }
                Spacer()
                Button {
                    viewModel.deposit(amount: Double(amount) ?? 0.0)
                } label: {
                    Text("Deposit")
                        .font(.headline)
                }
            }
            .padding(.all)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
