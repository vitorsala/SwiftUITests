//
//  PreviewColorView.swift
//  SwiftUITests
//
//  Created by Vitor Kawai Sala on 20/06/19.
//  Copyright © 2019 Vitor Kawai Sala. All rights reserved.
//

import SwiftUI

struct PreviewColorView : View {
    var color: Color
    var titleText: String
    var body: some View {
        return VStack {
            Text(titleText)
            Rectangle().foregroundColor(color)
        }
    }
}
