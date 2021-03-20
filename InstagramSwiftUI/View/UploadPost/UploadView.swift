//
//  UploadView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 19.03.2021.
//

import SwiftUI

struct UploadView: View {
    @State private var selectedImage: UIImage?
    @State private var postImage: Image? 
    @State private var captionText = ""
    
    private let width = UIScreen.main.bounds.width * 0.3
    
    var body: some View {
        VStack(spacing: 60) {
            if postImage == nil {
                Button(action: {
                    
                }) {
                    Image("plusButton")
                        .resizable()
                        .scaledToFit()
                        .frame(width: width, height: width)
                }.padding(.top, 50)
            } else if let image = postImage {
                HStack(alignment: .top) {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: width, height: width)
                        .clipped()
                    
                    TextField("Enter your caption...", text: $captionText)
                        .padding(.top)
                }.padding(.horizontal)
                Button(action: {
                    
                }) {
                    Text("Share")
                        .frame(width: UIScreen.main.bounds.width - 40, height: 50)
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
