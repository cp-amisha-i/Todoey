//
//  TaskDetailScreen.swift
//  Todoey-Combine
//
//  Created by Amisha I on 18/06/21.
//

import SwiftUI

struct TaskDetailScreen: View {
    
    @ObservedObject var viewModel: TableDetailViewModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("Edit") {
                    
                }
            }
            Text("Run")
            HStack {
                Text("Description")
                Text("Run.. Run..")
            }
            HStack {
                Text("Date")
                Text("18/jun/2021")
            }
            HStack {
                Text("Status")
                Text("Incomplete")
            }
        }
        .padding()
    }
}

struct TaskDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        TaskDetailScreen(viewModel: TableDetailViewModel(taskId: 0))
    }
}
