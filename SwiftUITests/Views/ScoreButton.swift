//
//  ScoreButton.swift
//  SwiftUITests
//
//  Created by Vitor Kawai Sala on 20/06/19.
//  Copyright © 2019 Vitor Kawai Sala. All rights reserved.
//

import SwiftUI

struct ScoreButton : View {
    @Binding var showAlert: Bool
    let buttonText: String
    let score: String
    var body: some View {
        Button(action: {
            self.showAlert = true
        }, label: {
            Text(buttonText)
        }).presentation($showAlert) {
            Alert(title: Text("Your Score"), message: Text(score))
            }.padding(.top, 16)
    }
}
