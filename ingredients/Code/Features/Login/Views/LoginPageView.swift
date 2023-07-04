//
//  ContentView.swift
//  ingredients
//
//  Created by Sean Lim on 7/3/23.
//

import SwiftUI

struct LoginPageView: View {
    
    @State private var email = "";
    @State private var password = "";

    
    
    var body: some View {
        NavigationStack {
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
                EntryFieldView(prompt: "Your email address", field: $email, placeHolder: "Email")
                    .padding(.bottom, 20)

                EntryFieldView(prompt: "Your password", isSecure: true, field: $password, placeHolder: "Password")
                    .padding(.bottom, 50)
                
                
                Button {
                } label: {
                    ZStack {
                        HStack (spacing: 0) {
                            Text("Continue")
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
                .padding(.bottom, 30)
                HStack {
                    VStack {
                        Divider()
                    }
                    Text("or")
                        .foregroundColor(Color.gray)
                    VStack {
                        Divider()
                    }
                }
                .frame(width: 325)
                .padding(.bottom, 30)
                NavigationLink {
                    SignupPageView()
                } label: {
                    
                        HStack (spacing: 0) {
                            Image(systemName: "envelope")
                                .foregroundColor(Color.black)
                                .padding(5)
                            Text("Sign up with email")
                                .font(.system(size: 15))
                                .foregroundColor(Color.black)
                        }
                        .background(Capsule()
                            .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 0.5))
                            .frame(width: 325, height: SizeConstants.textfieldHeight))
                        
                    
                    .frame(width: 325)
                }
                .padding(.bottom, 30)
                
                Button {
                } label: {
                    
                        HStack (spacing: 0) {
                            Image("GoogleLogo")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color.black)
                            Text("Sign up with Google")
                                .font(.system(size: 15))
                                .foregroundColor(Color.black)
                        }
                        .background(Capsule()
                            .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 0.5))
                            .frame(width: 325, height: SizeConstants.textfieldHeight))
                        
                    
                    .frame(width: 325)
                }
                .padding(.bottom, 30)
                
                // Login with Apple button
                /*
                Button {
                } label: {
                    
                        HStack (spacing: 0) {
                            Image(systemName: "apple.logo")
                                .foregroundColor(Color.black)
                                .padding(5)
                            Text("Sign up with Apple")
                                .font(.system(size: 15))
                                .foregroundColor(Color.black)
                        }
                        .background(Capsule()
                            .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 0.5))
                            .frame(width: 325, height: Constants.textfieldHeight))
                        
                    
                    .frame(width: 325)
                }
                 */
            }
            .frame(width: 350)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
