//
//  ContentView.swift
//  SwiftUITests
//
//  Created by Vitor Kawai Sala on 15/06/19.
//  Copyright © 2019 Vitor Kawai Sala. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Hello World")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
