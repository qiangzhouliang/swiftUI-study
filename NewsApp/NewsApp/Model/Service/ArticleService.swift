//
//  ArticleService.swift
//  NewsApp
//
//  Created by swan on 2024/11/7.
//

import Foundation

struct ArticleService {
    func list(offset: Int, completion: @escaping ListCompletion<Article>){
        var list = [Article]()
        for index in 0..<20 {
            list.append(Article(id: "\(index)", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"))
        }
        completion(list, "获取数据成功", 200)
    }
    
    func info(id: String, completion: @escaping DataCompletion<Article>){
        var Article = Article(id: "\(id)", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了")
        
        completion(Article, "获取数据成功", 200)
    }
}
