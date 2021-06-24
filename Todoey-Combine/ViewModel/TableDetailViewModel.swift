//
//  TableDetailViewModel.swift
//  Todoey-Combine
//
//  Created by Amisha I on 18/06/21.
//

import Foundation

class TableDetailViewModel: ObservableObject {
    
    let dataSourceDB = TaskDataSource()
    var taskId: Int64 = 0
    var task: Task?
    
    init(taskId: Int64) {
        self.taskId = taskId
        task = getTaskDetail()
    }
    
    func getTaskDetail() -> Task {
        dataSourceDB.getData(id: taskId)!
    }
}
