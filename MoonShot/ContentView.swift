//
//  ContentView.swift
//  MoonShot
//
//  Created by Rajabaliyev01 on 19/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "phone.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .font(.largeTitle)
            Text("007")
                .font(.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
