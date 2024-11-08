//
//  Article.swift
//  NewsApp
//
//  Created by swan on 2024/11/6.
//

import Foundation

struct Article: Codable, Identifiable,Hashable {
    var id: String
    var title: String
    var mediaName: String
    var publishTime: String
    var content: String
}

extension Article {
    /// 占位内容
    static let mock = Article(id: UUID().uuidString, title: String(repeating: "新闻标题", count: Int.random(in: 5...10)), mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "新闻内容")
}
