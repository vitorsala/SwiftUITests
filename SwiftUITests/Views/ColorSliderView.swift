//
//  ColorSliderView.swift
//  SwiftUITests
//
//  Created by Vitor Kawai Sala on 20/06/19.
//  Copyright © 2019 Vitor Kawai Sala. All rights reserved.
//

import SwiftUI

struct ColorSliderView : View {
    @Binding var value: Double
    var textColor: Color
    var body: some View {
        return HStack {
            Text("0").color(textColor)
            Slider(value: $value, from: 0.0, through: 1.0)
            Text("255").color(textColor)
            }.padding()
    }
}
