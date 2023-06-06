//
//  HeaderView.swift
//  ToDoList
//
//  Created by Marco Zamora on 6/5/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        // Header
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(Angle(degrees: 15))
            
            VStack{
                Text("To Do List")
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.system(size: 50))
                
                Text("Get things done")
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                    .bold()
            }
            .padding(.top, 30)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3,
        height: 300)
        .offset(y: -100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
