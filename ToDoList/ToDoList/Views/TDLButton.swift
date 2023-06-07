//
//  TDLButton.swift
//  ToDoList
//
//  Created by Marco Zamora on 6/7/23.
//

import SwiftUI

struct TDLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button {
            // Action
            
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text("Log in")
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

struct TDLButton_Previews: PreviewProvider {
    static var previews: some View {
        TDLButton(title: "Value", background: .pink) {
            // Action goes here
        }
    }
}
