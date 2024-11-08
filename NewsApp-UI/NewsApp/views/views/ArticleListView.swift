//
//  ArticleListView.swift
//  NewsApp
//
//  Created by swan on 2024/11/6.
// 新闻列表

import SwiftUI

struct ArticleListView: View {
    var articles: [Article]
    
    var body: some View {
        ForEach(articles) { article in
            Text(article.title)
                .font(.system(size: 16))
                .foregroundColor(Color(.sRGB, red: 51/255, green: 51/255, blue: 51/255, opacity: 1))
            HStack {
                Text(article.mediaName)
                    .font(.system(size: 10))
                Spacer()
                Text(article.publishTime)
                    .font(.system(size: 10))
            }
            .foregroundColor(Color(.sRGB, red: 153/255, green: 153/255, blue: 153/255, opacity: 1))
        }
        .padding(.top)
        .padding(.horizontal)
    }
}

#Preview {
    ArticleListView(articles: [
        Article(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"),
        Article(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"),
        Article(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"),
        Article(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了")
    ])
}
