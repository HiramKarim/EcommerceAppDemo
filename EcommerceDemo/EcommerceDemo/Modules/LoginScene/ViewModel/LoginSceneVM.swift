//
//  LoginSceneVM.swift
//  EcommerceDemo
//
//  Created by Hiram Castro on 25/11/21.
//

import SwiftUI
import Foundation

protocol LoginSceneVM {
    func login()
}

class DefaultLoginVM: LoginSceneVM, ObservableObject {
    
    // Login Properties..
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    
    
    func login() {
        
    }
    
    func showCreateAccountScene() {
        
    }
    
    func showForgotPasswordScene() {
        
    }
    
    
}
