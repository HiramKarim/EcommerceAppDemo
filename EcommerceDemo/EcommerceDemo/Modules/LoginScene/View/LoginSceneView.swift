//
//  LoginSceneView.swift
//  EcommerceDemo
//
//  Created by Hiram Castro on 25/11/21.
//

import SwiftUI

struct LoginSceneView: View {
    
    @StateObject var loginData: DefaultLoginVM = DefaultLoginVM()
    
    var body: some View {
        Text("Hello, World!")
    }
}

@ViewBuilder
func CustomTextField(icon: String,
                     title: String,
                     hint: String,
                     value: Binding<String>,
                     showPassword: Binding<Bool>) -> some View {
    
    VStack(alignment: .leading, spacing: 12) {
        Label {
            Text(title)
                .font(.custom(FontManager.RalewayRegular, size: 14))
        } icon: {
            Image(systemName: icon)
        }
        .foregroundColor(Color.black.opacity(0.8))
        
        if title.contains("Password") && !showPassword.wrappedValue {
            SecureField(hint, text: value)
        } else {
            TextField(hint, text: value)
                .padding(.top, 2)
        }
        
        Divider()
            .background(Color.black.opacity(0.4))
    }
    .overlay(
        Group {
            if title.contains("Password") {
                Button {
                    showPassword.wrappedValue.toggle()
                } label: {
                    Text(showPassword.wrappedValue ? "Hide" : "Show")
                        .font(.custom(FontManager.RalewayRegular, size: 13).bold())
                        .foregroundColor(Color("Purple"))
                }
                .offset(y: 8)

            }
        }
        , alignment: .trailing
    )
    
}

struct LoginSceneView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSceneView()
    }
}
