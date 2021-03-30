//
//  ImageUploader.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 22.03.2021.
//

import UIKit
import Firebase
 
enum UploadType {
    case profile
    case upload
    
    var filePath: StorageReference {
        let filename = NSUUID().uuidString
        switch self {
        case .profile:
            return Storage.storage().reference(withPath: "/profile_images/\(filename)")
        case .upload:
            return Storage.storage().reference(withPath: "/upload_images/\(filename)")
        }
    }
}


struct ImageUploader {
    static func uploadImage(image: UIImage, uploadType: UploadType, completion: @escaping(String) -> ()) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        let ref = uploadType.filePath
        
        ref.putData(imageData, metadata: nil) { _, error in
            if let error = error {
                print("DEBUG: failed to upload image \(error.localizedDescription)")
            }
            
            ref.downloadURL { url, _ in
                guard let imageURL = url?.absoluteString else { return }
                completion(imageURL)
            }
        }
    }
}
