//
//  AuthorText.swift
//  WWDC20-BookClub
//
//  Created by Philip Chung on 2/13/24
//

import SwiftUI

struct AuthorText: View {
    let author: String
    
    init(_ author: String) {
        self.author = author
    }
    
    var body: some View {
        Text(author)
            .font(.system(size: 15))
            .foregroundStyle(.secondary)
    }
}

#Preview {
    AuthorText("Charles Dickens")
}
