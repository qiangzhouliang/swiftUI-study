//
//  Category.swift
//  NewsApp
//
//  Created by swan on 2024/11/7.
//

import Foundation

struct Category: Codable {
    var id: String
    var name:String
}

extension Category {
    static let mock = Category(id: UUID().uuidString, name: "分类")
}
