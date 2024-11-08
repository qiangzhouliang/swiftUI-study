//
//  Response.swift
//  NewsApp
//
//  Created by swan on 2024/11/7.
//

import Foundation

struct DataResponse<T: Codable>: Codable {
    var code = 200
    var msg = ""
    var data: T?
}

struct ListResponse<T: Codable>: Codable {
    var code = 200
    var msg = "获取数据成功"
    var data: [T]?
}
