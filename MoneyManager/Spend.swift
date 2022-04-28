//
//  Spend.swift
//  MoneyManager
//
//  Created by gumball on 4/28/22.
//

import Foundation

import RealmSwift

class Spend: Object {
    @Persisted var money: String = ""
    @Persisted var reason: String = ""
}
