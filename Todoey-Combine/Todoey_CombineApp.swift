//
//  Todoey_CombineApp.swift
//  Todoey-Combine
//
//  Created by Amisha I on 17/06/21.
//

import SwiftUI

@main
struct Todoey_CombineApp: App {
    
    init() {
        TaskDataSource().createDatabase()
        TaskDataSource().createTable()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
