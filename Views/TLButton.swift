//
//  TLButton.swift
//  TodoList
//
//  Created by Per Henrik Mork Viken on 10/07/2023.
//

import SwiftUI



struct TLButton: View {
    
    var title: String
    var background: Color
    var action: () -> Void

    
    var body: some View {
        
        Button {
            // handles what button does
            self.action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 50)
                    .foregroundColor(self.background)
                Text(self.title)
                    .autocapitalization(.none)
                    .font(.system(size: 28).bold())
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.all)
            }
        }

    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "title", background: Color.red) {
            // action
        }
    }
}
