//
//  TodoListView.swift
//  TodoList
//
//  Created by Per Henrik Mork Viken on 06/07/2023.
//

import SwiftUI

struct TodoListView: View {
    
    var gray = Color(red: 230/255, green: 230/255, blue: 230/255)
    
    var body: some View {
        ZStack {
            VStack {
                
                // header
                
                ZStack {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.10)
                        .foregroundColor(Color(.white))
                    VStack {
                        HStack {
                            Button(action: {
                                // Handle button tap -> other lists?
                            }) {
                                Label(
                                    title: {
                                        Text("Listname")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30).bold())
                                    },
                                    icon: {
                                        Image(systemName: "pencil.and.outline")
                                            .font(.system(size: 30).bold())
                                            .symbolRenderingMode(.palette)
                                            .foregroundStyle(Color("PenColor"), Color(.red))
                                    }
                                )
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                // Handle button tap -> profile
                            }) {
                                Image(systemName: "person.crop.circle")
                                    .font(.system(size: 30).bold())
                                    .foregroundColor(Color("TextMain"))
                                    
                            }
                        }
                        .padding(.horizontal, 20.0)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.1)
                        .offset(y: 15)
                    }
                    
                }
                
                // main area
                
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color("Gray100"))
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.9 )
                    
                    VStack {
                        TodoListItemView(title: "title")
                        TodoListItemView(title: "title")
                        TodoListItemView(title: "title")
                        TodoListItemView(title: "title")
                        TodoListItemView(title: "title")
                        TodoListItemView(title: "title")
                        TodoListItemView(title: "title")
                        TodoListItemView(title: "title")
                        TodoListItemView(title: "title")
                        Spacer()
                    }

                }
                
                
            }
            Button {
                // handle button click
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 80)
                        .foregroundColor(.blue)
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
            }
            .offset(x: (UIScreen.main.bounds.width / 2) - 80, y: (UIScreen.main.bounds.height / 2) - 90)
            
            //todo: Add new item in list
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
