//
//  ContentViewModel.swift
//  SwiftUITests
//
//  Created by Vitor Kawai Sala on 20/06/19.
//  Copyright © 2019 Vitor Kawai Sala. All rights reserved.
//

import Foundation
import Combine

final class ContentViewModel: BindableObject {
    var didChange = PassthroughSubject<ContentViewModel, Never>()
    
    let target = ColorCombination(red: Double.random(in: 0..<1), green: Double.random(in: 0..<1), blue: Double.random(in: 0..<1))
    
    var guess = ColorCombination(red: 0.5, green: 0.5, blue: 0.5) {
        didSet {
            didChange.send(self)
        }
    }
}
