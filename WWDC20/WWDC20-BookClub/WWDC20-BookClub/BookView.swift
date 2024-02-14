//
//  BookView.swift
//  WWDC20-BookClub
//
//  Created by Philip Chung on 2/13/24
//

import SwiftUI

struct BookView: View {
    @State private var editorConfig = EditorConfig()
    @ObservedObject var currentlyReading: CurrentlyReading

    func presentEditor() {
        editorConfig.present(initialProgress: currentlyReading.currentProgress)
    }
    
    var body: some View {
        VStack {
            BookCard(currentlyReading: currentlyReading)
            
            Divider()
            
            HStack {
                Button(action: presentEditor) {
                    Label("Update Progress", systemImage: "book.circle")
                }
                .disabled(currentlyReading.isFinished)
                .padding(.vertical, 10)
                .frame(maxWidth: .infinity)
                
                Divider()
                    .frame(height: 20)
                
                Toggle(
                    isOn: $currentlyReading.isFinished
                ) {
                    Label(
                        "I'm Done",
                        systemImage: "checkmark.circle.fill"
                    )

                }
                .frame(maxWidth: .infinity)
            }
            
            Divider()
            
            ProgressDetailsList(progress: currentlyReading.progress)
            
            Divider()
            Spacer()
        }
        .overlay {
            ProgressEditor(editorConfig: $editorConfig) {
                editorConfig.isEditorPresented.toggle()
                currentlyReading.progress.entries.append(.init(id: UUID(), progress: editorConfig.progress, time: .now, note: editorConfig.note))
            }
            .offset(y: editorConfig.isEditorPresented ? 400 : 1500)

        }
        .animation(.spring, value: editorConfig.isEditorPresented)
    }
}

#Preview {
    BookView(currentlyReading: readings[0])
}
