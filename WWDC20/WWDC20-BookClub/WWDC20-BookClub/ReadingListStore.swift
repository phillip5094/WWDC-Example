//
//  ReadingListStore.swift
//  WWDC20-BookClub
//
//  Created by Philip Chung on 2/13/24
//

import Foundation

class ReadingListStore: ObservableObject {
    @Published var readings: [CurrentlyReading]
    
    init(readings: [CurrentlyReading]) {
        self.readings = readings
    }
}
