//
//  InputField.swift
//  TodoList
//
//  Created by Per Henrik Mork Viken on 06/07/2023.
//

import SwiftUI

struct InputField: View {
    
    @State var scope = ""
    
    var secure: Bool
    var backgroundColor: Color
    var textColor: Color
    var placeholder: String
    var textSize: Float
    
    func getScope() -> String {
        return scope
    }
    
    init(secure: Bool, backgroundColor: Color, textColor: Color, placeholder: String, textSize: Float) {
        self.secure = secure
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.placeholder = placeholder
        self.textSize = textSize
    }
    
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10000)
                .foregroundColor(backgroundColor)
            
            ZStack {
                if scope.isEmpty {
                    Text(placeholder)
                        .font(.system(size: CGFloat(textSize)))
                        .padding(.all)
                        .foregroundColor(textColor)
                }
            }
            
            if secure {
                SecureField("", text: $scope)
                    .autocapitalization(.none)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                    .font(.system(size: CGFloat(textSize)))
            } else {
                TextField("", text: $scope)
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
        InputField(secure: false, backgroundColor: Color.gray, textColor: Color.white, placeholder: "placeholder", textSize: 20)
    }
}
