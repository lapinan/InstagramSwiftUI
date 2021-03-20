//
//  UserStatView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 20.03.2021.
//

import SwiftUI

struct UserStatView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("1")
                .font(.system(size: 15, weight: .semibold))
            Text("Followers")
                .font(.system(size: 15))
        }
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView()
    }
}
