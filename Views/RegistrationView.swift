//
//  RegisterView.swift
//  TodoList
//
//  Created by Per Henrik Mork Viken on 04/07/2023.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()
    
    @State private var secondaryColor = UIColor(red: 0, green: 0.3, blue: 1, alpha: 0.9)
    @State private var gray100 = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1)
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    
                    Image(systemName: "pencil.and.outline")
                        .font(.system(size: 150).bold())
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color("PenColor"), Color(secondaryColor))
                    
                    
                    Text("Sign up today!")
                        .font(.system(size: 45)).bold()
                        .foregroundColor(Color("TextMain"))
                        .padding(.bottom)
                    
                    InputField(secure: false, backgroundColor: Color("Gray100_solid"), textColor: Color.black, placeholder: "Email", textSize: 25, content: $viewModel.email)
                        .padding(.horizontal)
                    
                    InputField(secure: true, backgroundColor: Color("Gray100_solid"), textColor: Color.black, placeholder: "Password", textSize: 25, content: $viewModel.password)
                        .padding(.horizontal)
                    
                    
                    TLButton(
                        title: "Sign up",
                        background: Color(secondaryColor)
                    ) {
                        print("Attempting sign up")
                    }
                    .padding(.horizontal)
                    
                    
                    
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.5)
                
                VStack {
                    Text("Log in instead?")
                    NavigationLink("☜ Go back ☜", destination: LoginView())
                        .foregroundColor(Color(secondaryColor))
                }
                .offset(y: (UIScreen.main.bounds.height / 2 ) - 60)
            }
        }
        .navigationBarBackButtonHidden(true) // remove the '< back' function
    }
    
}
struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
