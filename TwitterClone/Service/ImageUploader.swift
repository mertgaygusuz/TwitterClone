//
//  ImageUploader.swift
//  TwitterClone
//
//  Created by Mert Gaygusuz on 3.01.2023.
//

import Firebase
import UIKit
import FirebaseStorage

struct ImageUploader {
    
    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_image/\(filename)")
        
        
        ref.putData(imageData) { _, error in
            if let error = error {
                print("failed to upload image: \(error.localizedDescription)")
                return
            }
            
            ref.downloadURL { imageUrl, _ in
                guard let imageUrl = imageUrl?.absoluteString else{ return }
                completion(imageUrl)
            }
        }
    }
}
