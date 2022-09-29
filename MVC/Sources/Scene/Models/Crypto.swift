//
//  Crypto.swift
//  MVC
//
//  Created by Sergio on 29.09.22.
//

import Foundation

struct Crypto {
    var name: String
    var ticker: String
    var value: Int
}

extension Crypto {
    static var testData = [
        Crypto(name: "Bitcoin", ticker: "BTC", value: 20000),
        Crypto(name: "Ethernium", ticker: "ETH", value: 1500),
        Crypto(name: "Ripple", ticker: "XRP", value: 423),
        Crypto(name: "Stellar", ticker: "XLM", value: 17),
        Crypto(name: "Algorand", ticker: "ALgo", value: 3)
    ]
}
