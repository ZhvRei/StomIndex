//
//  Converter.swift
//  StomIndex
//
//  Created by c7j on 23.12.2022.
//

import Foundation

func paintedConverter (indexPaint: String) -> Float {
    var indexInt: Float = 0
    switch indexPaint {
    case paintedNo:
        indexInt = 1
    case paintedQuarter:
        indexInt = 2
    case paintedHalf:
        indexInt = 3
    case paintedThreeQuarters:
        indexInt = 4
    case paintedFull:
        indexInt = 5
    default:
        indexInt = 0
    }
    return indexInt
}
