//
//  DutyLogApp.swift
//  DutyLog
//
//  Created by Tricia DiPiazza on 6/26/22.
//

import SwiftUI

@main
struct DutyLogApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
