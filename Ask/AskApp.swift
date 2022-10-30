//
//  AskApp.swift
//  Ask
//
//  Created by Mashael Alghunaim on 01/04/1444 AH.
//

import SwiftUI

@main
struct AskApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Aljwhra1()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
