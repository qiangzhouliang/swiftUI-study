@_private(sourceFile: "ArticleListView.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ArticleListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/ArticleListView.swift", line: 14)
        ForEach(articles) { article in
            Text(article.title)
                .font(.system(size: __designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 16)))
                .foregroundColor(Color(.sRGB, red: __designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[1].value.[0]", fallback: 51)/__designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[1].value.[1]", fallback: 255), green: __designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[2].value.[0]", fallback: 51)/__designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[2].value.[1]", fallback: 255), blue: __designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[3].value.[0]", fallback: 51)/__designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[3].value.[1]", fallback: 255), opacity: __designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[4].value", fallback: 1)))
            HStack {
                Text(article.mediaName)
                    .font(.system(size: __designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 10)))
                Spacer()
                Text(article.publishTime)
                    .font(.system(size: __designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[1].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value", fallback: 10)))
            }
            .foregroundColor(Color(.sRGB, red: __designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.arg[1].value.[0]", fallback: 153)/__designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.arg[1].value.[1]", fallback: 255), green: __designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.arg[2].value.[0]", fallback: 153)/__designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.arg[2].value.[1]", fallback: 255), blue: __designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.arg[3].value.[0]", fallback: 153)/__designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.arg[3].value.[1]", fallback: 255), opacity: __designTimeInteger("#9351.[1].[1].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.arg[4].value", fallback: 1)))
        }
        .padding(.top)
        .padding(.horizontal)
    
#sourceLocation()
    }
}

import struct NewsApp.ArticleListView
#Preview {
    ArticleListView(articles: [
        Article(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"),
        Article(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"),
        Article(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"),
        Article(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了")
    ])
}



