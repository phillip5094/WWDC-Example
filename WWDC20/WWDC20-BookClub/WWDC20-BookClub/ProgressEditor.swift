//
//  ProgressEditor.swift
//  WWDC20-BookClub
//
//  Created by Philip Chung on 2/13/24
//

import SwiftUI

struct ProgressEditor: View {
    @Binding var editorConfig: EditorConfig
    let saveAction: () -> Void
    
    var body: some View {
        List {
            VStack {
                HStack {
                    Button("Cancel") {
                        editorConfig.isEditorPresented.toggle()
                    }
                    .buttonStyle(.borderless)

                    Spacer()
                    
                    Button("Save") {
                        saveAction()
                    }
                    .buttonStyle(.borderless)
                }
                
                Divider()
                    .padding(.top, 10)
            }
            .listRowSeparator(.hidden)
            
            HStack {
                Slider(value: $editorConfig.progress, in: 0...1, step: 0.01)
                Text("\(Int(editorConfig.progress * 100))%")
                    .font(.headline)
                    .frame(width: 50)
                    .padding(.horizontal, 20)
            }
            .listRowSeparator(.hidden)
            
            VStack(alignment: .leading) {
                Text("NOTES:")
                    .font(.footnote)
                TextEditor(text: $editorConfig.note)
                    .frame(height: 200)
                    .border(.gray, width: 1)
            }
            .listRowSeparator(.hidden)
        }
        
        .listStyle(.inset)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(10)
        .shadow(radius: 3, y: -2)
    }
}

#Preview {
    ProgressEditor(editorConfig: .constant(.init()), saveAction: {})
}
