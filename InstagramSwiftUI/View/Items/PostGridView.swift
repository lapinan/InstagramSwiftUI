//
//  PostGridView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 20.03.2021.
//

import SwiftUI
import Kingfisher

struct PostGridView: View {
    private let items = Array(repeating: GridItem(), count: 3)
    private let width = UIScreen.main.bounds.width / 3
    
    @ObservedObject var viewModel: PostGridViewModel
    let config: PostGridConfiguration
    
    init(config: PostGridConfiguration) {
        self.config = config
        self.viewModel = PostGridViewModel(config: config)
    }
    

    var body: some View {
        LazyVGrid(columns: items, spacing: 3) {
            ForEach(viewModel .posts) { post in
                NavigationLink(destination: FeedView(), label: {
                    KFImage(URL(string: post.imageURL))
                        .resizable()
                        .scaledToFill()
                        .frame(width: width, height: width)
                        .clipped()
                })
            }
        }
    }
}

