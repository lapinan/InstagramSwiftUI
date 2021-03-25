//
//  RegisterView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 20.03.2021.
//

import SwiftUI

struct RegisterView: View {
    @State private var email = ""
    @State private var userName = ""
    @State private var fullName = ""
    @State private var password = ""
    
    @State private var selectedImage: UIImage?
    @State private var postImage: Image?
    
    @State private var showImagePicker = false
    
    @Environment(\.presentationMode) var mode
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
            VStack(alignment: .center) {
                if postImage == nil {
                    Button(action: {
                        showImagePicker.toggle()
                    }, label: {
                        Image("plusButton")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width * 0.3)
                            .padding(.bottom)
                            .foregroundColor(.white)
                    }).sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                        ImagePicker(image: $selectedImage)
                    }
                } else if let image = postImage {
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.3)
                        .padding(.bottom)
                        .clipShape(Circle())
                }
                
                VStack(spacing: 20) {
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding(.horizontal, 30)
                        .foregroundColor(Color.white)
                    
                    CustomTextField(text: $userName, placeholder: Text("Username"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding(.horizontal, 30)
                        .foregroundColor(Color.white)

                    CustomTextField(text: $fullName, placeholder: Text("Full Name"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding(.horizontal, 30)
                        .foregroundColor(Color.white)

                    
                    CustomSecureField(text: $password)
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding(.horizontal, 30)
                        .foregroundColor(Color.white)
            
                }.padding(.bottom)
                
                Button(action: {
                    viewModel.register(withEmail: email, password: password, image: selectedImage, username: userName, fullname: fullName)
                }, label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 40, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .clipShape(Capsule())
                })
                .padding(.top)
                
                
                Spacer()
                
                
                Button(action: {
                    mode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Text("Already have an account? ")
                            .font(.system(size: 14))
                        
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .padding()
                    .foregroundColor(.white)
                }
            }
        }
    }
}

extension RegisterView {
    func loadImage() {
        guard let image = selectedImage else { return }
        postImage = Image(uiImage: image)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
