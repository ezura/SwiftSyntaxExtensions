//
//  TriviaPiece+Comment.swift
//  SwiftSyntaxExtensions
//
//  Created by yuka ezura on 2019/04/28.
//

import Foundation
import SwiftSyntax

extension TriviaPiece {
    public var comment: String? {
        switch self {
        case .spaces,
             .tabs,
             .verticalTabs,
             .formfeeds,
             .newlines,
             .carriageReturns,
             .carriageReturnLineFeeds:
            return nil
        case .lineComment(let comment),
             .blockComment(let comment),
             .docLineComment(let comment),
             .docBlockComment(let comment),
             .shebang(let comment),
             .unexpectedText(let comment):
            return comment
        }
    }
    
    public var isNewline: Bool {
        switch self {
        case .newlines: 
            return true
        default:
            return false
        }
    }
}
