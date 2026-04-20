//
//  File.swift
//  MoonShot
//
//  Created by Rajabaliyev01 on 19/04/26.
//

import SwiftUI

struct File: View {
    var body: some View {
        Image(.earth1)
            .resizable()
            .scaledToFit()
            
            .containerRelativeFrame(.vertical) { size, axis in
                size * 0.4
                
            }
    }
    
}
#Preview {
    File()
}
