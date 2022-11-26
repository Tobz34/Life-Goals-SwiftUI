//
//  LifeGoalsApp.swift
//  LifeGoals
//
//  Created by tobi adegoroye on 23/10/2022.
//

import SwiftUI

@main
struct LifeGoalsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                GoalView()
                    .tabItem {
                        Symbols.goal
                        Text("Goal")
                    }
            }
        }
    }
}
