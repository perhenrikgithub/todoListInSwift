//
//  LoginView.swift
//  TodoList
//
//  Created by Per Henrik Mork Viken on 04/07/2023.
//

import Foundation

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    @State private var secondaryColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image(systemName: "pencil.and.outline")
                        .font(.system(size: 150).bold())
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color("PenColor"), Color(secondaryColor))
                    
                    
                    Text("Welcome back!")
                        .font(.system(size: 45)).bold()
                        .foregroundColor(Color("TextMain"))
                        .padding(.bottom)
                    
        
                    InputField(secure: false, backgroundColor: Color("Gray100_solid"), textColor: Color.black, placeholder: "Email", textSize: 25)
                        .padding(.horizontal)
                    
                    InputField(secure: true, backgroundColor: Color("Gray100_solid"), textColor: Color.black, placeholder: "Password", textSize: 25)
                        .padding(.horizontal)g
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .foregroundColor(Color(secondaryColor))
                        Text("Log in")
                            .autocapitalization(.none)
                            .font(.system(size: 28).bold())
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.all)
                    }
                    .padding(.horizontal)
                    
                    
                    
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.5)
                
                VStack {
                    Text("New here?")
                    NavigationLink("Create An Account", destination: RegistrationView())
                        .foregroundColor(Color(secondaryColor))
                }
                .offset(y: (UIScreen.main.bounds.height / 2 ) - 60)
            }
        }
        .navigationBarBackButtonHidden(true) // remove the '< back' function
    }
}
    

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

