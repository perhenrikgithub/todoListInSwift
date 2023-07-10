//
//  LoginView.swift
//  TodoList
//
//  Created by Per Henrik Mork Viken on 04/07/2023.
//

import Foundation

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var loginColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
    @State var errorMessage = " "
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image(systemName: "pencil.and.outline")
                        .font(.system(size: 150).bold())
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color("PenColor"), Color(loginColor))
                    
                    
                    Text("Welcome back!")
                        .font(.system(size: 45)).bold()
                        .foregroundColor(Color("TextMain"))
                        .padding(.bottom)
                    
        
                    InputField(secure: false, backgroundColor: Color("Gray100_solid"), textColor: Color.black, placeholder: "Email", textSize: 25, content: $viewModel.email)
                        .padding(.horizontal)
                    
                    InputField(secure: true, backgroundColor: Color("Gray100_solid"), textColor: Color.black, placeholder: "Password", textSize: 25, content: $viewModel.password)
                        .padding(.horizontal)
                    
                    TLButton(
                        title: "Log in",
                        background: Color(loginColor)
                    ) {
                        // Attempting log in
                        if !viewModel.isLoginOk() {
                            
                            
                            if viewModel.errorMessages.contains([LoginErrorMessages.emailIsEmpty]) {
                                //
                            }
                            
                            if viewModel.errorMessages.contains([LoginErrorMessages.passwordIsEmpty]) {
                                //
                            }
                        } else {
                            viewModel.login()
                        }
                        
                        
                    }
                    .padding(.horizontal)
                    
                    Text(errorMessage)
                    
                    
                    
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.5)
                
                VStack {
                    Text("New here?")
                    NavigationLink("Create An Account", destination: RegistrationView())
                        .foregroundColor(Color(loginColor))
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

