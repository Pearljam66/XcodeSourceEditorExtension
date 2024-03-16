//
//  SourceEditorCommand.swift
//  PracticeExtension
//
//  Created by Sarah Clark on 3/16/24.
//

import Foundation
import XcodeKit

class SourceEditorCommand: NSObject, XCSourceEditorCommand {

    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {

        // Retrieve the contents of the current source editor.
        let lines = invocation.buffer.lines

        // Reverse the order of the lines in a copy
        let updatedText = Array(lines.reversed())
        lines.removeAllObjects()
        lines.addObjects(from: updatedText)

        // Signal to Xcode that the command has completed.
        completionHandler(nil)
    }
    
}
