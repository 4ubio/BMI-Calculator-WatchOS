//
//  BMI_CalculatorApp.swift
//  BMI Calculator WatchKit Extension
//
//  Created by Sebastián Rubio on 01/02/22.
//

import SwiftUI

@main
struct BMI_CalculatorApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
