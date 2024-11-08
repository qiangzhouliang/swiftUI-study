//
//  ArticleViewModel.swift
//  NewsApp
//
//  Created by swan on 2024/11/7.
//

import SwiftUI

let htmlHeader =
                        """
                            <html>
                                <head>
                                <meta charset="utf-8">
                                <meta name="viewport" content="width=device-width,initial-scale=1.0">
                                <style>
                                    img{
                                       max-width: 100% !important;
                                    }
                                </style>
                                </head>
                                <body>
                        """

let htmlFooter =
                        """
                            </body>
                            </html>
                        """


class ArticleViewModel: ObservableObject {
    
    private let service = ArticleService()
    
    // 新闻列表数据
    @Published private(set) var articles: [Article] = Array(repeating: .mock, count: 10)
    // 新闻列表数据是否加载完成
    @Published private(set) var loaded: Bool = false
    
    // 新闻详情是否加载完成
    @Published var loadedDetail = false
    
    // 新闻详情信息
    @Published private(set) var articleContnet: String = ""
    
    /// webview 操作器
    private(set) var webWiewStore = WebViewStore()
    
    private var offset = 1
    
    // 字体大小存储配置
    @AppStorage("ArticleFontSizeSetting") var articleFontSizeSetting: Double = 1.0
    
    
    init() {
        list()
    }
    
    private func list(){
        service.list(offset: offset) { datas, msg, code in
            self.articles = datas!
            self.loaded = true
        }
    }
    
    func info(id: String) {
        service.info(id: id) { data, msg, code in
            self.loadedDetail = true
            
            guard let article = data else { return }
            //MARK: WebView 渲染 html，时间比较慢，在这个时间段的时候 loading 已经消失，导致产生一段时间的空白，尝试是否能解决这一段时间的空白
            self.articleContnet =
                """
                \(htmlHeader)
                <div class="articleContainer" style = "zoom: \(self.articleFontSizeSetting)">\(article.content)</div>
                \(htmlFooter)
                """
        }
    }
    
    func zoom(value: Double){
        //0.75 1 1.25 1.5 1.75
        webWiewStore.coordinator?.zoom(zoom: value / 100)
        self.articleFontSizeSetting = value / 100
    }
    
}
