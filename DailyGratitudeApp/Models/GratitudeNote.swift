//
//  GratitudeNote.swift
//  DailyGratitudeApp
//
//  Created by 김선규 on 7/18/24.
//

import Foundation

struct GratitudeNote: Identifiable, Codable {
    var id: UUID = UUID()
    var date: Date
    var note: String
}
