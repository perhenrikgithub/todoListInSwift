//
//  TodoListItemView.swift
//  TodoList
//
//  Created by Per Henrik Mork Viken on 06/07/2023.
//

import SwiftUI

func capatilizeFistChar(string: String) -> String {
    var returnStr = ""
    for char in string {
        if returnStr.count == 0 {
            returnStr += char.uppercased()
        } else {
            returnStr += char.lowercased()
        }
    }
    return returnStr
}

struct TodoListItemView: View {
    
    @State var isDone = false
    @State var editButtonIsClicked = false
    
    var title: String
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color("Gray100"))
            
            HStack {
                Button(action: {
                    isDone = !isDone
                }) {
                    Image(systemName: isDone ? "checkmark.circle" : "circle")
                        .font(.system(size: 25).bold())
                        .foregroundColor(Color("TextMain"))
                        
                }
                Text(capatilizeFistChar(string: title))
                    .font(.system(size: CGFloat(26)))
                    .padding(.leading, 5)
                Spacer()
                
                Button(action: {
                    // handle edit button
                }) {
                    ZStack {
                        Image(systemName: "pencil")
                            .font(.system(size: 25).bold())
                            .foregroundColor(Color("TextMain"))
                    }
                    
                        
                }
                
                    
            }
            .padding(.horizontal)
            .frame(width: UIScreen.main.bounds.width)
        }.frame(width: UIScreen.main.bounds.width, height: 80)
        
    }
}

struct TodoListItemView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TodoListItemView(title: "title")
        }
        
    }
}
