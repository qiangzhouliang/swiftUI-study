//
//  StudyPage.swift
//  NewsApp
//
//  Created by swan on 2024/11/5.
//

import SwiftUI

struct StudyPage: View {
    
    @State private var tabIndex: Int = 0
    @State private var typeIndex: Int = 0  // 类型
    @State var showNewsList:Bool = true
    @State private var currentIndex: Int = 0
    
    var body: some View {
        // 标题栏
        VStack {
            // 标题栏
            AppBarView{
                Image("tool_bar_left_icon")
                    .resizable()
                    .frame(width: 69, height: 25)
                // 搜索框
                HStack {
                    Image(systemName: "magnifyingglass")
                    Text("搜索感兴趣的内容")
                    Spacer()
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 8.0)
                .background(.white.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                
                // 学习进度
                HStack {
                    Text("学习\n进度")
                    Text("100%")
                }
                
                Image(systemName: "bell")
            }
            
            TabbarView(items: ["思想政治","法律法规","职业道德","诚信自律"], isScrollable: true, selection: $tabIndex)
                .frame(height: 55)
                .background(.blue.opacity(0.1))
                .onChange(of: tabIndex) { oldValue, newValue in
                    print(newValue)
                }
            
            ScrollView {
                LazyVStack(spacing: 0){  // 只支持 iOS14.0+
                    TabbarView(items: ["相关咨询","视频课程"], selection: $typeIndex, showIndicator: false)
                        .frame(height: 55)
                        .onChange(of: typeIndex) { oldValue, newValue in
                            showNewsList = newValue == 0
                            print(newValue)
                        }
                    /// 轮播图
                    SwiperView(items: [
                        Image("banner1").resizable(),
                        Image("banner2").resizable(),
                        Image("banner3").resizable(),
                        Image("banner4").resizable()
                    ], currentPage: $currentIndex)
                    .aspectRatio(7/3, contentMode: .fit)
                    .cornerRadius(12.0)
                    .padding(.horizontal)
                    if showNewsList {
                        // 新闻列表
                        ArticleListView(articles: [
                            Article(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了"),
                            Article(id: "1", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", mediaName: "来源：“学习强国“学习平台", publishTime: "2020-02-08", content: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了")
                        ])
                    } else {
                        VideoListView(videos: [
                            VideoModel(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", duration: "20:00:00", imgUrl: "https://pic.rmb.bdstatic.com/bjh/events/e26cde43bb83910b5e6da54c89a4402f2501.jpeg@h_1280"),
                            VideoModel(id: "1", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", duration: "20:00:00", imgUrl: "https://pic.rmb.bdstatic.com/bjh/events/e26cde43bb83910b5e6da54c89a4402f2501.jpeg@h_1280"),
                            VideoModel(id: "2", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", duration: "20:00:00", imgUrl: "https://pic.rmb.bdstatic.com/bjh/events/e26cde43bb83910b5e6da54c89a4402f2501.jpeg@h_1280"),
                            VideoModel(id: "3", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", duration: "20:00:00", imgUrl: "https://pic.rmb.bdstatic.com/bjh/events/e26cde43bb83910b5e6da54c89a4402f2501.jpeg@h_1280")
                        ])
                    }
                    
                }
            }
        }
    }
}



#Preview {
    StudyPage()
}
