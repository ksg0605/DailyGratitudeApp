//
//  GratitudeListView.swift
//  DailyGratitudeApp
//
//  Created by 김선규 on 7/18/24.
//

import SwiftUI

struct GratitudeListView: View {
    @EnvironmentObject var viewModel: GratitudeViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.notes) { note in
                HStack {
                    Text(note.note)
                        .padding()
                    Spacer()
                    Text(formattedDate(date: note.date))
                        .foregroundColor(.gray)
                        .italic()
                }
            }
            .navigationTitle("Gratitude Notes")
        }
    }
    
    func formattedDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: date)
    }
}

#Preview {
    GratitudeListView()
}
