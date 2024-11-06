@_private(sourceFile: "StudyPage.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension StudyPage {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/pages/StudyPage.swift", line: 18)
        // 标题栏
        VStack {
            // 标题栏
            AppBarView{
                Image(__designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "tool_bar_left_icon"))
                    .resizable()
                    .frame(width: __designTimeInteger("#8532.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 69), height: __designTimeInteger("#8532.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 25))
                // 搜索框
                HStack {
                    Image(systemName: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "magnifyingglass"))
                    Text(__designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value", fallback: "搜索感兴趣的内容"))
                    Spacer()
                }
                .padding(.horizontal, __designTimeInteger("#8532.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[1].value", fallback: 12))
                .padding(.vertical, __designTimeFloat("#8532.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[1].value", fallback: 8.0))
                .background(.white.opacity(__designTimeFloat("#8532.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
                .clipShape(RoundedRectangle(cornerRadius: __designTimeFloat("#8532.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[3].arg[0].value.arg[0].value", fallback: 25.0)))
                
                // 学习进度
                HStack {
                    Text("学习\n进度")
                    Text(__designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].arg[0].value", fallback: "100%"))
                }
                
                Image(systemName: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value", fallback: "bell"))
            }
            
            TabbarView(items: [__designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[1].arg[0].value.[0]", fallback: "思想政治"),__designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[1].arg[0].value.[1]", fallback: "法律法规"),__designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[1].arg[0].value.[2]", fallback: "职业道德"),__designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[1].arg[0].value.[3]", fallback: "诚信自律")], isScrollable: __designTimeBoolean("#8532.[1].[4].property.[0].[0].arg[0].value.[1].arg[1].value", fallback: true), selection: $tabIndex)
                .frame(height: __designTimeInteger("#8532.[1].[4].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 55))
                .background(.blue.opacity(__designTimeFloat("#8532.[1].[4].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.1)))
                .onChange(of: tabIndex) { oldValue, newValue in
                    print(newValue)
                }
            
            ScrollView {
                LazyVStack(spacing: __designTimeInteger("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value", fallback: 0)){  // 只支持 iOS14.0+
                    TabbarView(items: [__designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]", fallback: "相关咨询"),__designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1]", fallback: "视频课程")], selection: $typeIndex, showIndicator: __designTimeBoolean("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[2].value", fallback: false))
                        .frame(height: __designTimeInteger("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 55))
                        .onChange(of: typeIndex) { oldValue, newValue in
                            showNewsList = newValue == __designTimeInteger("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[1].value.[0].[0]", fallback: 0)
                            print(newValue)
                        }
                    /// 轮播图
                    SwiperView(items: [
                        Image(__designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: "banner1")).resizable(),
                        Image(__designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[1].arg[0].value.[1].arg[0].value", fallback: "banner2")).resizable(),
                        Image(__designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[1].arg[0].value.[2].arg[0].value", fallback: "banner3")).resizable(),
                        Image(__designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[1].arg[0].value.[3].arg[0].value", fallback: "banner4")).resizable()
                    ], currentPage: $currentIndex)
                    .aspectRatio(__designTimeInteger("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[0]", fallback: 7)/__designTimeInteger("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[1]", fallback: 3), contentMode: .fit)
                    .cornerRadius(__designTimeFloat("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[1].modifier[1].arg[0].value", fallback: 12.0))
                    .padding(.horizontal)
                    if showNewsList {
                        // 新闻列表
                        ArticleListView(articles: [
                            Article(id: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[0].[0].arg[0].value.[0].arg[0].value", fallback: "0"), title: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[0].[0].arg[0].value.[0].arg[1].value", fallback: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"), mediaName: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[0].[0].arg[0].value.[0].arg[2].value", fallback: "来源：“学习强国“学习平台"), publishTime: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[0].[0].arg[0].value.[0].arg[3].value", fallback: "2020-02-08"), content: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[0].[0].arg[0].value.[0].arg[4].value", fallback: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了")),
                            Article(id: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[0].[0].arg[0].value.[1].arg[0].value", fallback: "1"), title: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[0].[0].arg[0].value.[1].arg[1].value", fallback: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"), mediaName: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[0].[0].arg[0].value.[1].arg[2].value", fallback: "来源：“学习强国“学习平台"), publishTime: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[0].[0].arg[0].value.[1].arg[3].value", fallback: "2020-02-08"), content: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[0].[0].arg[0].value.[1].arg[4].value", fallback: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"))
                        ])
                    } else {
                        VideoListView(videos: [
                            VideoModel(id: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[0].arg[0].value", fallback: "0"), title: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[0].arg[1].value", fallback: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"), duration: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[0].arg[2].value", fallback: "20:00:00"), imgUrl: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[0].arg[3].value", fallback: "https://pic.rmb.bdstatic.com/bjh/events/e26cde43bb83910b5e6da54c89a4402f2501.jpeg@h_1280")),
                            VideoModel(id: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[1].arg[0].value", fallback: "1"), title: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[1].arg[1].value", fallback: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"), duration: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[1].arg[2].value", fallback: "20:00:00"), imgUrl: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[1].arg[3].value", fallback: "https://pic.rmb.bdstatic.com/bjh/events/e26cde43bb83910b5e6da54c89a4402f2501.jpeg@h_1280")),
                            VideoModel(id: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[2].arg[0].value", fallback: "2"), title: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[2].arg[1].value", fallback: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"), duration: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[2].arg[2].value", fallback: "20:00:00"), imgUrl: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[2].arg[3].value", fallback: "https://pic.rmb.bdstatic.com/bjh/events/e26cde43bb83910b5e6da54c89a4402f2501.jpeg@h_1280")),
                            VideoModel(id: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[3].arg[0].value", fallback: "3"), title: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[3].arg[1].value", fallback: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"), duration: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[3].arg[2].value", fallback: "20:00:00"), imgUrl: __designTimeString("#8532.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].[1].[0].arg[0].value.[3].arg[3].value", fallback: "https://pic.rmb.bdstatic.com/bjh/events/e26cde43bb83910b5e6da54c89a4402f2501.jpeg@h_1280"))
                        ])
                    }
                    
                }
            }
        }
    
#sourceLocation()
    }
}

import struct NewsApp.StudyPage
#Preview {
    StudyPage()
}



