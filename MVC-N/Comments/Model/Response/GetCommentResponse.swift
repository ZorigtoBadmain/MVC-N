//
//  GetCommentResponse.swift
//  MVC-N
//
//  Created by Зоригто Бадмаин on 16.07.2020.
//  Copyright © 2020 Зоригто Бадмаин. All rights reserved.
//

import Foundation


struct GetCommentResponse {
    
    typealias JSON = [String: AnyObject]
    
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failInternetError}
        
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dict: dictionary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
