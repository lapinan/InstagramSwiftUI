//
//  Extensions.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 20.03.2021.
//

import UIKit

extension UIApplication {
    func endEditing() {
        UIApplication.shared.sendAction(#selector(UIApplication.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

