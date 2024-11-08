//
//  VideoService.swift
//  NewsApp
//
//  Created by RandyWei on 2021/8/18.
//

import Alamofire

struct VideoService {
    func list<T: Codable>(completion: @escaping ListCompletion<T>) {
        AF.request("http://localhost:3000/video/list").json(completion: completion)
    }
    
    func info<T: Codable>(id:String,completion: @escaping DataCompletion<T>) {
        AF.request("http://localhost:3000/video/info?id=\(id)").json(completion: completion)
    }
}
