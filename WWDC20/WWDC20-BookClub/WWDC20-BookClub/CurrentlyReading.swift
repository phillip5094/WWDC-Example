//
//  CurrentlyReading.swift
//  WWDC20-BookClub
//
//  Created by Philip Chung on 2/13/24
//

import Foundation

class CurrentlyReading: ObservableObject, Identifiable {
    let book: Book
    @Published var progress: ReadingProgress
    @Published var isFinished = false
    
    var currentProgress: Double {
        isFinished ? 1.0 : progress.progress
    }
    
    init(book: Book, progress: ReadingProgress) {
        self.book = book
        self.progress = progress
    }
}

struct ReadingProgress {
    struct Entry: Identifiable {
        let id: UUID
        let progress: Double
        let time: Date
        let note: String?
    }
    
    var entries: [Entry]
    
    var progress: Double {
        entries.last?.progress ?? 0.0
    }
}
