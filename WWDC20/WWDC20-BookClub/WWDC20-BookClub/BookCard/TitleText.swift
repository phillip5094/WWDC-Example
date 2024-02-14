//
//  TitleText.swift
//  WWDC20-BookClub
//
//  Created by Philip Chung on 2/13/24
//

import SwiftUI

struct TitleText: View {
    let title: String
    
    init(_ title: String) {
        self.title = title
    }
    
    var body: some View {
        Text(title)
//            .font(.system(size: 18))
            .bold()
    }
}

#Preview {
    TitleText("Greate Expectations")
}
