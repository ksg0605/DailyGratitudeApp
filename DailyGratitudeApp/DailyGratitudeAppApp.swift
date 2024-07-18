//
//  DailyGratitudeAppApp.swift
//  DailyGratitudeApp
//
//  Created by 김선규 on 7/18/24.
//

import SwiftUI

@main
struct DailyGratitudeAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(GratitudeViewModel())
        }
    }
}
