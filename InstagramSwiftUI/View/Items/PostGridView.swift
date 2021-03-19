//
//  PostGridView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 20.03.2021.
//

import SwiftUI

struct PostGridView: View {
    private var items = Array(repeating: GridItem(), count: 3)
    private var width = UIScreen.main.bounds.width / 3
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 3) {
            ForEach(0 ..< 10) { _ in
                NavigationLink(destination: FeedView(), label: {
                    Image("batman")
                        .resizable()
                        .scaledToFill()
                        .frame(width: width, height: width)
                        .clipped()
                })
            }
        }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
    }
}
