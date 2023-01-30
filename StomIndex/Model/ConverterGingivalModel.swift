//
//  ConverterGingival.swift
//  StomIndex
//
//  Created by c7j on 02.01.2023.
//

import Foundation

func gingivalConverter (indexGingival: String) -> Float {
    var indexInt: Float = 0
    switch indexGingival {
    case gingivalNorm:
        indexInt = 0
    case gingivalEasy:
        indexInt = 1
    case gingivalMiddle:
        indexInt = 2
    case gingivalHard:
        indexInt = 3
    default:
        indexInt = 0
    }
    return indexInt
}
