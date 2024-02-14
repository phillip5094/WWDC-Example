//
//  Book.swift
//  WWDC20-BookClub
//
//  Created by Philip Chung on 2/13/24
//

import Foundation

struct Book: Identifiable {
    let id = UUID()
    let coverName: String
    let title: String
    let author: String
}

let books: [Book] = [
    .init(coverName: "cover1", title: "Title1", author: "author1"),
    .init(coverName: "cover1", title: "Title2", author: "author2"),
    .init(coverName: "cover1", title: "Title3", author: "author3"),
    .init(coverName: "cover1", title: "Title4", author: "author4"),
    .init(coverName: "cover1", title: "Title5", author: "author5"),
    .init(coverName: "cover1", title: "Title6", author: "author6"),
    .init(coverName: "cover1", title: "Title7", author: "author7"),
    .init(coverName: "cover1", title: "Title8", author: "author8"),
    .init(coverName: "cover1", title: "Title9", author: "author9"),
]
