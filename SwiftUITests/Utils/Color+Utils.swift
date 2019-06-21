//
//  Color+Utils.swift
//  SwiftUITests
//
//  Created by Vitor Kawai Sala on 20/06/19.
//  Copyright © 2019 Vitor Kawai Sala. All rights reserved.
//

import SwiftUI

extension Color {
    init(combination: ColorCombination) {
        self.init(red: combination.red, green: combination.green, blue: combination.blue)
    }
}
