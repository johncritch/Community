//
//  StorageManager.swift
//  Community
//
//  Created by John Critchlow on 9/9/21.
//

import FirebaseStorage

public class StorageManager {
    
    static let shared = StorageManager()
    
    private let bucket = Storage.storage().reference()
    
    //MARK: -Public
    
    public func uploadUserEventPost(model: EventPost)
    
}
