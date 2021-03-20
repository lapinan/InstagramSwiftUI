//
//  NotificationView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 19.03.2021.
//

import SwiftUI

struct NotificationView: View {
    
    private let array = [true, false, true, false, true, false, true, false, true, false]
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 16) {
                ForEach(0 ..< 10) { item in
                    NotificationCell(showPostImage: array[item])
                        .padding(.top)
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
