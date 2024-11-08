//
//  ArticleListView.swift
//  NewsApp
//
//  Created by swan on 2024/11/6.
// 新闻列表

import SwiftUI

struct ArticleListView: View {
    
    @StateObject private var articleVM = ArticleViewModel()
    
    
    var body: some View {
        //, id: \.self
        ForEach(articleVM.articles, id: \.self) { article in
            NavigationLink(destination: ArticleDetail(id: article.id)) {
                VStack(alignment: .leading) {
                    Text(article.title)
                        .font(.system(size: 16))
                        .foregroundColor(getColor(all: 51))
                    HStack {
                        Text(article.mediaName)
                            .font(.system(size: 10))
                        Spacer()
                        Text(article.publishTime)
                            .font(.system(size: 10))
                    }
                    .foregroundColor(contentColor)
                    .padding(.top, 4.0)
                    Divider()
                }.redacted(reason: articleVM.loaded ? [] :.placeholder) // 数据没加载出来之前的占位显示
            }.buttonStyle(PlainButtonStyle())
        }
        .padding(.top)
        .padding(.horizontal)
    }
}

//#Preview {
//    ArticleListView(articles: [
//        Article(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"),
//        Article(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"),
//        Article(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"),
//        Article(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了")
//    ])
//}
