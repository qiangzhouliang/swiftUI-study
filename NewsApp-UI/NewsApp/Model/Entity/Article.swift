//
//  Article.swift
//  NewsApp
//
//  Created by swan on 2024/11/6.
//

import Foundation

struct Article: Decodable, Identifiable {
    var id: String
    var title: String
    var mediaName: String
    var publishTime: String
    var content: String
}
