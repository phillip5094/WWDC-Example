//
//  BookCard.swift
//  WWDC20-BookClub
//
//  Created by Philip Chung on 2/13/24
//

import SwiftUI

struct BookCard: View {
    @ObservedObject var currentlyReading: CurrentlyReading
    
    var body: some View {
        HStack {            
            BookCover(currentlyReading.book.coverName)
            VStack(alignment: .leading) {
                TitleText(currentlyReading.book.title)
                AuthorText(currentlyReading.book.author)
            }
            Spacer()
            RingProgressView(value: currentlyReading.currentProgress)
        }
    }
}

#Preview {
    BookCard(
        currentlyReading: readings[0]
    )
}
