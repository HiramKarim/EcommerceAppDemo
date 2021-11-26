//
//  OnboardingScene.swift
//  EcommerceDemo
//
//  Created by Hiram Castro on 25/11/21.
//

import SwiftUI

struct OnboardingScene: View {
    
    @State var showLoginPage: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Find your\nGadget")
                .font(.custom(FontManager.RalewayRegular, size: 55))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Image("OnBoard")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Button {
                withAnimation {
                    showLoginPage = true
                }
            } label: {
                Text("Get started")
                    .font(.custom(FontManager.RalewayRegular, size: 18))
                    .fontWeight(.semibold)
                    .padding(.vertical, 18)
                    .frame(maxWidth:.infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                    .foregroundColor(Color("Purple"))
            }
            .padding(.horizontal, 30)
            .offset(y: getRect().height < 750 ? 20 : 40)
            
            Spacer()

        }
        .padding()
        .padding(.top,getRect().height < 750 ? 0 : 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Purple"))
        .overlay(
            Group {
                if showLoginPage {
                    
                }
            }
        )
        
    }
}

struct OnboardingScene_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnboardingScene()
                .previewDevice("iPhone 8")
            OnboardingScene()
        }
    }
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
