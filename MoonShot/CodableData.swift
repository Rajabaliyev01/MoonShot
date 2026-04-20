//
//  Data.swift
//  MoonShot
//
//  Created by Rajabaliyev01 on 21/04/26.
//

import SwiftUI
struct User: Codable {
    let name: String
    let address: Address
}
struct Address:  Codable {
    let street: String
    let city: String
}
struct CodableData: View {
    
    var body: some View {
        Button("Decode JSON") {
            let input = """
                {
                "name": "JR",
                "address": {
                "street": "777, Avenue ",
                "city": "UZB"
                    }
                }
                """
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}
#Preview {
    CodableData()
}
