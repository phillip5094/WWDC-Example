//
//  ProgressDetailsList.swift
//  WWDC20-BookClub
//
//  Created by Philip Chung on 2/13/24
//

import SwiftUI

struct ProgressDetailsList: View {
    let progress: ReadingProgress
    
    var body: some View {
        List(progress.entries.reversed()) { entry in
            VStack(alignment: .leading) {
                HStack {
                    Text("\(Int(entry.progress * 100))% Complete")
                    Spacer()
                    Text("\(entry.time.ISO8601Format())")
                }
                
                if let note = entry.note {
                    Text(note)
                        .font(.footnote)
                        .foregroundStyle(.gray)
                }
                
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ProgressDetailsList(
        progress: .init(entries: [
            .init(
                id: UUID(),
                progress: 10,
                time: Date(timeIntervalSince1970: -3000),
                note: "😁"
            ),
            .init(
                id: UUID(),
                progress: 42,
                time: Date(timeIntervalSince1970: -2000),
                note: "Maybe I should be working on my WWDC talk instead of reading but this book is so good."
            ),
            .init(
                id: UUID(),
                progress: 57,
                time: Date(timeIntervalSince1970: -1000),
                note: "🤔"
            ),
        ])
    )
}
