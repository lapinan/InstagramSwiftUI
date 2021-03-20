//
//  CustomSecureField.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 20.03.2021.
//

import SwiftUI

struct CustomSecureField: View {
    @Binding var text: String
    var placeHolder = "Password"
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text("\(placeHolder)")
                    .foregroundColor(Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading, 35)
            }
            
            HStack {
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                
                SecureField("", text: $text)
            }
        }
    }
}

