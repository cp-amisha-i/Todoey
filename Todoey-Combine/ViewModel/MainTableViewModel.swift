//
//  MainTableViewModel.swift
//  Todoey-Combine
//
//  Created by Amisha I on 17/06/21.
//

import Foundation

class MainTableViewModel: ObservableObject {
    
    @Published var allTask: [Task] = []
    @Published var datasource = TaskDataSource()
    
    init() {
        allTask = datasource.getAllData() ?? []
    }
}
