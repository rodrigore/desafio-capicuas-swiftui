//
//  ContentView.swift
//
//  Created by Rodrigo Gauzman on 08-01-20.
//  Copyright © 2020 Rodrigo Gauzman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var items = Array(11...99)
    let capicua = Capicua()
    
    
    var body: some View {
        VStack {
            List(items, id: \.self) {
                Text("Número \($0) su capicua es: \(self.capicua.get($0))")
            }
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
