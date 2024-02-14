//
//  ReadingList.swift
//  WWDC20-BookClub
//
//  Created by Philip Chung on 2/13/24
//

import SwiftUI

struct ReadingList: View {
    @StateObject var store = ReadingListStore(readings: readings)
    
    var body: some View {
        List(store.readings) { currentlyReading in
            NavigationLink {
                BookView(currentlyReading: currentlyReading)
                    .navigationBarTitleDisplayMode(.inline)
            } label: {
                BookCard(currentlyReading: currentlyReading)
            }
            .alignmentGuide(.listRowSeparatorLeading, computeValue: { dimension in
                dimension[.leading]
            })
        }
        .listStyle(.inset)
        .navigationTitle("Currently Reading")
    }
}

#Preview {
    ReadingList()
}

let readings: [CurrentlyReading] = [
    .init(
        book: .init(coverName: "cover", title: "Great Expectations", author: "Charles Dickens"),
        progress: .init(entries: [
            .init(
                id: UUID(),
                progress: 0.10,
                time: Date(timeIntervalSince1970: -3000),
                note: "😁"
            ),
            .init(
                id: UUID(),
                progress: 0.42,
                time: Date(timeIntervalSince1970: -2000),
                note: "Maybe I should be working on my WWDC talk instead of reading but this book is so good."
            ),
            .init(
                id: UUID(),
                progress: 0.57,
                time: Date(timeIntervalSince1970: -1000),
                note: "🤔"
            ),
        ])
    ),
    .init(
        book: .init(coverName: "cover", title: "Pride and Prejudice", author: "Jane Austen"),
        progress: .init(entries: [])
    ),
    .init(
        book: .init(coverName: "cover", title: "Little Women", author: "Louisa May Alcott"),
        progress: .init(entries: [])
    ),
    .init(
        book: .init(coverName: "cover", title: "Wuthering Heights", author: "Emily Bronte"),
        progress: .init(entries: [])
    ),
    .init(
        book: .init(coverName: "cover", title: "Moby Dick", author: "Herman Melville"),
        progress: .init(entries: [])
    ),
    .init(
        book: .init(coverName: "cover", title: "title6", author: "authro5"),
        progress: .init(entries: [])
    ),
    .init(
        book: .init(coverName: "cover", title: "title7", author: "authro6"),
        progress: .init(entries: [])
    ),
]
