//
//  EditorConfig.swift
//  WWDC20-BookClub
//
//  Created by Philip Chung on 2/13/24
//

import Foundation

struct EditorConfig {
    var isEditorPresented = false
    var note = ""
    var progress: Double = 0
    
    mutating func present(initialProgress: Double) {
        progress = initialProgress
        note = ""
        isEditorPresented = true
    }
}
