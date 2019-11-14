//
//  PhotoController.swift
//  Photo
//
//  Created by Rohan Taylor on 11/14/19.
//  Copyright © 2019 Rohan Taylor. All rights reserved.
//

import Foundation

class PhotoController {
    var photos: [Photo] = []
    
    func create(title: String, data: Data) {
        let photo = Photo(title: title, imageData: data)
        photos.append(photo)
    }
    func update(photo: Photo,title: String, imageData: Data) {
        guard let index = photos.firstIndex(of: photo) else { return }
        photos[index].title = title
        photos[index].imageData = imageData
    }
}

