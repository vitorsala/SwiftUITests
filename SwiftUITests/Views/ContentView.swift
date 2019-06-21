//
//  ContentView.swift
//  SwiftUITests
//
//  Created by Vitor Kawai Sala on 15/06/19.
//  Copyright © 2019 Vitor Kawai Sala. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @ObjectBinding var viewModel: ContentViewModel
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                PreviewColorView(color: Color(combination: viewModel.target), titleText: "Target")
                PreviewColorView(color: Color(combination: viewModel.guess), titleText: "Your guess")
            }.frame(height: 200, alignment: Alignment.center)
            Spacer().frame(height: 32)
            VStack {
                ColorSliderView(value: $viewModel.guess.red, textColor: .red)
                ColorSliderView(value: $viewModel.guess.green, textColor: .green)
                ColorSliderView(value: $viewModel.guess.blue, textColor: .blue)
                ScoreButton(showAlert: $showAlert, buttonText: "Hit me!", score: "\(computeScore())")
            }
        }.padding(.horizontal, 32)
    }
    
    private func computeScore() -> Int {
        let rDiff = viewModel.guess.red - viewModel.target.red
        let gDiff = viewModel.guess.green - viewModel.target.green
        let bDiff = viewModel.guess.blue - viewModel.target.blue
        let diff = sqrt(rDiff * rDiff + gDiff * gDiff + bDiff * bDiff)
        return Int((1.0 - diff) * 100.0 + 0.5)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel())
    }
}
#endif
