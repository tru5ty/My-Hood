//
//  Post.swift
//  my-hood
//
//  Created by Nathan McGuire on 16/11/2015.
//  Copyright © 2015 Off Da Husk Studios. All rights reserved.
//

import Foundation

class Post {
    
    private var _imagePath: String
    private var _title: String
    private var _postDescr: String
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDescr: String {
        return _postDescr
    }
    
    init(imagePath: String, title: String, description: String) {
        self._imagePath = imagePath
        self._title = title
        self._postDescr = description
    }
}