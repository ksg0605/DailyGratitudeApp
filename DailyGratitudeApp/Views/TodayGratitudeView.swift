//
//  TodayGratitudeView.swift
//  DailyGratitudeApp
//
//  Created by 김선규 on 7/18/24.
//

import SwiftUI

struct TodayGratitudeView: View {
    @EnvironmentObject var viewModel: GratitudeViewModel
    @State private var currentNote: String = ""
   
    var body: some View {
        VStack(spacing: 20) {
            Text("What are you grateful for today?")
                .font(.title)
                .multilineTextAlignment(.center)
            TextEditor(text: $currentNote)
                .border(Color.gray, width: 1)
                .padding()
            Button(action: {
                viewModel.addNote(note: currentNote)
                currentNote = ""
            }) {
                Text("Add Note")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TodayGratitudeView()
}
