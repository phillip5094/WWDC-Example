//
//  RingProgressView.swift
//  WWDC20-BookClub
//
//  Created by Philip Chung on 2/13/24
//

import SwiftUI

struct RingProgressView: View {
    let value: Double
    private let lineWidth: CGFloat = 7
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color.gray.opacity(0.5),
                    lineWidth: lineWidth
                )
            
            Circle()
                .trim(from: 0, to: value)
                .stroke(
                    Color.blue,
                    style: StrokeStyle(
                        lineWidth: lineWidth,
                        lineCap: .round
                    )
                )
                .shadow(radius: 10)
                .rotationEffect(.degrees(-90))
        }
        .frame(height: 50)
        .animation(.spring, value: value)
    }
}

#Preview {
    Group {
        RingProgressView(value: 0.52)
        RingProgressView(value: 0.7)
        RingProgressView(value: 1.0)
        RingProgressView(value: 0.0)
    }
}
