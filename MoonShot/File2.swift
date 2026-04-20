//
//  File2.swift
//  MoonShot
//
//  Created by YancharQuyon on 20/04/26.
//

import SwiftUI
struct File2: View {
    var body: some View {
        NavigationStack {
            List(1..<15) { page in
                NavigationLink("Page \(page)") {
                    
                    
                    Text("Page \(page)")
                }
                }
//            NavigationLink {
//                Text("Page 2")
//                
//            } label: {
//                VStack {
//                    Image(systemName: "pencil.and.scribble")
//                    Text("Page 2")
//                }
//                .font(.title)
//            }
            .navigationTitle("Main Page ")
        }
    }
}
