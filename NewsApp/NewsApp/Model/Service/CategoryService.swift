//
//  CategoryService.swift
//  NewsApp
//
//  Created by swan on 2024/11/7.
//

import Foundation
import Alamofire

struct CategoryService {
    
    func list<T: Codable>(completion: @escaping ListCompletion<T>){
        AF.request("http://localhost:3000/category/list").json(completion: completion)
    }
}
