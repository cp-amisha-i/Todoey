//
//  ContentView.swift
//  Todoey-Combine
//
//  Created by Amisha I on 17/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = MainTableViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(viewModel.allTask) { task in
                    
                }
                NavigationLink(destination: TaskDetailScreen(viewModel: TableDetailViewModel(taskId: 0))) {
                    TableCellView()
                }
            }
            .listStyle(SidebarListStyle())
            .onAppear {
                UITableView.appearance().backgroundColor = .clear
                UITableViewCell.appearance().selectionStyle = .none
                UITableView.appearance().showsVerticalScrollIndicator = false
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
