//
//  TableCellView.swift
//  Todoey-Combine
//
//  Created by Amisha I on 17/06/21.
//

import SwiftUI

struct TableCellView: View {
    var body: some View {
        HStack(spacing: 30) {
            Circle()
                .frame(width: 20, height: 20, alignment: .center)
            Text("TASK")
                .font(.headline.italic())
            Spacer()
        }
        .padding()
        .background(Color.white
            .cornerRadius(20)
            .shadow(color: Color.gray, radius: 2)
        )
    }
}

struct TableCellView_Previews: PreviewProvider {
    static var previews: some View {
        TableCellView()
    }
}
