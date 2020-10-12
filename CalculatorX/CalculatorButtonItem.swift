//
//  CalculatorButtonItem.swift
//  CalculatorX
//
//  Created by zijie vv on 2020-07-08.
//  Copyright © 2020 zijie vv. All rights reserved.
//
//  ================================================================================================
//

import SwiftUI

enum CalculatorButtonItem {
    enum Op: String {
        case plus = "+"
        case minus = "-"
        case multiply = "×"
        case divide = "÷"
        case equal = "="
    }

    enum Command: String {
        case clear = "AC"
        case flip = "+/-"
        case percent = "%"
    }

    case digit(Int)
    case dot
    case op(Op)
    case command(Command)
}

extension CalculatorButtonItem {
    var title: String {
        switch self {
        case let .digit(value):
            return String(value)
        case .dot:
            return "."
        case let .op(op):
            return op.rawValue
        case let .command(command):
            return command.rawValue
        }
    }

    var backgroundColorName: String {
        switch self {
        case .digit, .dot:
            return "digitBackground"
        case .op:
            return"operatorBackground"
        case .command:
            return "commandBackground"
        }
    }
}

extension CalculatorButtonItem: Hashable {}

extension CalculatorButtonItem: CustomStringConvertible {
    var description: String {
        switch self {
        case let .digit(num): return String(num)
        case .dot: return "."
        case let .op(op): return op.rawValue
        case let .command(command): return command.rawValue
        }
    }
}
