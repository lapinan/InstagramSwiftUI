//
//  LoginView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 20.03.2021.
//

import SwiftUI

struct LoginView: View {
    @State private var emailText = ""
    @State private var passwordText = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack(alignment: .center) {
                    Image("instagram")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.8, height: 70)
                        .padding(.bottom)
                    
                    VStack(spacing: 20) {
                        CustomTextField(text: $emailText, placeholder: Text("Email"), imageName: "envelope")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .padding(.horizontal, 30)
                        
                        CustomSecureField(text: $passwordText)
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .padding(.horizontal, 30)
                
                    }
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Forgot password?")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.white)
                                .padding()
                                .padding(.trailing, 28)
                        })
                    }
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width - 40, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .clipShape(Capsule())
                    })
                    
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: RegisterView().navigationBarHidden(true),
                        label: {
                            HStack {
                                Text("Don't have an account? ")
                                    .font(.system(size: 14))
                                
                                Text("Sign Up")
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding()
                            .foregroundColor(.white)
                        })
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
