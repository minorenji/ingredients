//
//  SignupPageView.swift
//  ingredients
//
//  Created by Sean Lim on 7/4/23.
//

import SwiftUI

struct SignupPageView: View {
   
    @StateObject var signupVM = SignupViewModel()
    
    
    var body: some View {
        VStack() {
            HStack {
                Spacer()
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .cornerRadius(15)
                    .shadow(radius: 1)
                    .padding(10)
                Text("ingredients")
                    .font(.custom("AvenirNext-Medium", fixedSize: 34))
                Spacer()
            }
            .padding()
            EntryFieldView(prompt: "Your email address", field: $signupVM.email, placeHolder: "Email")
                .padding(.bottom, 20)

            EntryFieldView(prompt: "Your password", isSecure: true, field: $signupVM.password, placeHolder: "Password")
                .padding(.bottom, 20)
            EntryFieldView(prompt: "Confirm password", isSecure: true, field: $signupVM.confirmPassword, placeHolder: "Confirm Password")
                .padding(.bottom, 50)
        
            Button {
            } label: {
                ZStack {
                    HStack (spacing: 0) {
                        Text("Sign Up")
                            .font(.system(size: 15))
                            .foregroundColor(Color.black)
                    }
                    HStack {
                        Spacer()
                        Image(systemName: "chevron.right")
                            .padding([.trailing])
                            .foregroundColor(Color.black)
                        
                    }
                }
                .frame(width: 325)
                .background(
                    Capsule()
                        .fill(Theme.foregroundColor)
                        .frame(width: 325, height: SizeConstants.textfieldHeight)
                    )
                
            }
            .opacity(signupVM.isSignupComplete ? 1 : 0.6)
            .disabled(!signupVM.isSignupComplete)
            .padding(.bottom, 30)
            
        }
        .frame(width: 350)
    }
}


struct SignupPageView_Previews: PreviewProvider {
    static var previews: some View {
        SignupPageView()
    }
}
