//
//  BookCover.swift
//  WWDC20-BookClub
//
//  Created by Philip Chung on 2/13/24
//

import SwiftUI

struct BookCover: View {
    let coverName: String
    
    init(_ coverName: String) {
        self.coverName = coverName
    }
    
    var body: some View {
        Color.blue
            .frame(width: 55, height: 90)
            .shadow(radius: 5, x: 2, y: 2)
            .padding()
    }
}

#Preview {
    BookCover("something")
}
