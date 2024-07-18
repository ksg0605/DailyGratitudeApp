//
//  GratitudeViewModel.swift
//  DailyGratitudeApp
//
//  Created by 김선규 on 7/18/24.
//

import Foundation

class GratitudeViewModel: ObservableObject {
    @Published var notes: [GratitudeNote] = []
    
    func addNote(note: String) {
        let newNote = GratitudeNote(date: Date(), note: note)
        notes.append(newNote)
        saveNotes()
    }
    
    func saveNotes() {
        if let data = try? JSONEncoder().encode(notes) {
            UserDefaults.standard.set(data, forKey: "gratitudeNotes")
        }
    }
    
    func loadNotes() {
        if let data = UserDefaults.standard.data(forKey: "gratitudeNotes"),
           let savedNotes = try? JSONDecoder().decode([GratitudeNote].self, from: data) {
            notes = savedNotes
        }
    }
    
    init() {
        loadNotes()
    }
}
