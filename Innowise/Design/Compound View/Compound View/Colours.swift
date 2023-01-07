//
//  File.swift
//  Compound View
//
//  Created by 123 on 7.01.23.
//

import Foundation
import UIKit

struct Colours {

    var coloursArray: [UIColor]
    var namesOfColours: [String]
    
    var counter = 0
}

let myColour = Colours(coloursArray: [.red, .yellow, .blue, .green, .white, .brown, .cyan, .darkGray, .gray, .magenta, .orange],
                       namesOfColours: ["Red", "Yellow", "Blue", "Green", "White", "Brown", "Cyan", "DarkGray", "Gray", "Magenta", "Orange"],
                       counter: 0)
