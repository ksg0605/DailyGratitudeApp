//
//  ContentView.swift
//  DailyGratitudeApp
//
//  Created by 김선규 on 7/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TodayGratitudeView()
                .tabItem {
                    Label("Today", systemImage: "square.and.pencil")
                }
            GratitudeListView()
                .tabItem {
                    Label("Notes", systemImage: "list.bullet")
                }
        }

    }
}

#Preview {
    ContentView()
}
