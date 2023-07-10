//
//  InputField.swift
//  TodoList
//
//  Created by Per Henrik Mork Viken on 06/07/2023.
//

import SwiftUI

struct InputField: View {
    
    var secure: Bool
    var backgroundColor: Color
    var textColor: Color
    var placeholder: String
    var textSize: Float
    @State private var content: Binding<String>
    
    init(secure: Bool, backgroundColor: Color, textColor: Color, placeholder: String, textSize: Float, content: Binding<String>) {
        self.secure = secure
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.placeholder = placeholder
        self.textSize = textSize
        _content = State(initialValue: content)
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10000)
                .foregroundColor(backgroundColor)
            
            //ZStack {
            //    if content.wrappedValue.isEmpty {
            //        Text(placeholder)
            //            .font(.system(size: CGFloat(textSize)))
            //            .padding(.all)
            //            .foregroundColor(textColor)
            //    }
            //}
            
            // todo: find solution on how to change color (darken) of placeholder text. attempt1^^
            
            if secure {
                SecureField(self.placeholder, text: $content.wrappedValue)
                    .autocapitalization(.none)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                    .font(.system(size: CGFloat(textSize)))
            } else {
                TextField(self.placeholder, text: $content.wrappedValue)
                    .autocapitalization(.none)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                    .font(.system(size: CGFloat(textSize)))
            }
        }
    }
}

struct InputField_Previews: PreviewProvider {
    static var previews: some View {
        Text("ello")
        //InputField(secure: false, backgroundColor: Color.gray, textColor: Color.white, placeholder: "placeholder", textSize: 20, content: LoginViewModel().$email)
    }
}
