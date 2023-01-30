//
//  ConverterSimplifiedModel.swift
//  StomIndex
//
//  Created by c7j on 28.12.2022.
//

import Foundation

// конвертирует значения индекса зубного НАЛЕТА в баллы
func plaqueConverter (indexPlaque: String) -> Float {
    var indexInt: Float = 0
    switch indexPlaque {
    case plaqueNo:
        indexInt = 0
    case plaqueNotMoreThanOneThird:
        indexInt = 1
    case plaqueUpToTwoThirds:
        indexInt = 2
    case plaqueTwoThirds:
        indexInt = 3
    default:
        indexInt = 0
    }
    return indexInt
}

// конвертирует значения индекса зубного КАМНЯ в баллы
func tartarConverter (indexTartar: String) -> Float {
    var indexInt: Float = 0
    switch indexTartar {
    case tartarNo:
        indexInt = 0
    case tartarNotMoreThanOneThird:
        indexInt = 1
    case tartarUpToTwoThirds:
        indexInt = 2
    case tartarTwoThirds:
        indexInt = 3
    default:
        indexInt = 0
    }
    return indexInt
}
