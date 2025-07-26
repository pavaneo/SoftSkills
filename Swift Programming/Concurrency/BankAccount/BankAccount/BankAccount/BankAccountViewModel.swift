//
//  BankAccountViewModel.swift
//  BankAccount
//
//  Created by Pavan Kumar J on 08/06/25.
//

import Foundation


class BankAccountViewModel: ObservableObject {
    
    @Published var balance: String = ""
    var amount: Double = 0.0
    init(amount: Double) {
        self.amount = amount
    }
    
    func deposit(amount: Double) {
        self.amount += amount
        balance = "Deposited Successfully, Your new balance is \(self.amount)"
    }
    
    func withDraw(amount: Double) {
        if self.amount < amount {
            balance =  "Insufficient Balance, Your balance is \(self.amount)"
            return
        }
        self.amount -= amount
        balance =  "Withdrawed Successfully of amount \(amount), And Your new balance is \(self.amount)"
    }
    
    func balanceAmount() {
        balance = "Total Balance is \(self.amount)"
    }
}
