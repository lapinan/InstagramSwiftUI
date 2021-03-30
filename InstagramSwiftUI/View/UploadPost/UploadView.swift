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
    @State private var showingImagePicker = false
    @ObservedObject var viewModel = UploadViewModel()
    
    private let width = UIScreen.main.bounds.width * 0.3
    
    var body: some View {
        VStack(spacing: 60) {
            if postImage == nil {
                Button(action: {
                    showingImagePicker.toggle()
                }) {
                    Image("plusButton")
                        .resizable()
                        .scaledToFit()
                        .frame(width: width, height: width)
                }
                .padding(.top, 50)
                .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                    ImagePicker(image: $selectedImage)
                }
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
                    if let image = selectedImage {
                        viewModel.uploadPost(caption: captionText, image: image) { _ in
                            captionText = ""
                            postImage = nil
                        }
                    }
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


extension UploadView {
    func loadImage() {
        guard let image = selectedImage else { return }
        postImage = Image(uiImage: image)
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
