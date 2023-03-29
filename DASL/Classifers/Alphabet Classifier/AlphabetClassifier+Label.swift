//
//  AlphabetClassifier+Label.swift
//  DASL
//
//  Created by Aziz Rmadi on 11/9/22.
//

extension Alphabet {
    
    enum Label: String, CaseIterable {
        case A = "A"
        case C = "C"
        case B = "B"
        case D = "D"
        case E = "E"
        case F = "F"
        case G = "G"
        case H = "H"
        case I = "I"
        case J = "J"
        case K = "K"
        case L = "L"
        case M = "M"
        case N = "N"
        case O = "O"
        case P = "P"
        case Q = "Q"
        case R = "R"
        case S = "S"
        case T = "T"
        case U = "U"
        case V = "V"
        case W = "W"
        case X = "X"
        case Y = "Y"
        case Z = "Z"
//        /// A negative class that represents irrelevant actions.
//        case otherAction = "Other Action"

        /// Creates a label from a string.
        /// - Parameter label: The name of an action class.
        init(_ string: String) {
            guard let label = Label(rawValue: string) else {
                let typeName = String(reflecting: Label.self)
                fatalError("Add the `\(string)` label to the `\(typeName)` type.")
            }

            self = label
        }
    }
}
