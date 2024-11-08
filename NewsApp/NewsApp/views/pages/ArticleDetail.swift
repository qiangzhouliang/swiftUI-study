//
//  ArticleDetail.swift
//  NewsApp
//
//  Created by swan on 2024/11/7.
//

import SwiftUI

struct ArticleDetail: View {
    
    @StateObject private var articleVM = ArticleViewModel()
    
    var id: String
    
    /// 点击显示弹窗
    @State private var present: Bool = false
    /// 字体大小
    @State private var fontValue = 100.0
    
    var body: some View {
        WebView(htmlString: articleVM.articleContnet, baseUrl: URL(string: "https://new.qq.com/"), store: articleVM.webWiewStore)
            .navigationTitle("咨询详情")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                Image(systemName: "textformat.size")
                    .onTapGesture {
                        present.toggle()
                    }
            })
            .bottomSheet(isPresent: $present, title: Text("字体大小"), content: {
                VStack {
                    HStack{
                        Text("较小")
                        Spacer()
                        Text("标准")
                        Spacer()
                        Text("普大")
                        Spacer()
                        Text("超大")
                        Spacer()
                        Text("特大")
                        Spacer()
                    }
                    Slider(value: $fontValue, in: 75...175, step: 25)
                        .onChange(of: fontValue) { oldValue, newValue in
                            articleVM.zoom(value: newValue)
                        }
                }
                .font(.system(size: 14))
                .padding()
                .padding(.horizontal, 12)
            })
            .loading(present: $articleVM.loadedDetail)
            .onAppear{
                articleVM.info(id: self.id)
                fontValue = articleVM.articleFontSizeSetting * 100.0
            }
    }
}

#Preview {
    ArticleDetail(id: "0")
}
