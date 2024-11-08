//
//  VideoModel.swift
//  NewsApp
//
//  Created by swan on 2024/11/6.
//

import Foundation

struct VideoModel: Codable, Identifiable {
    var id: String
    var title: String
    var duration: String
    var imgUrl: String
    var video: String  // 视频地址
    var desc: String  // 简介
}

extension VideoModel {
    /// 占位内容
    static let mock = VideoModel(id: UUID().uuidString, title: String(repeating: "视频新闻", count: Int.random(in: 5...10)), duration: "00:00", imgUrl: "", video: "video", desc: "desc")
}
