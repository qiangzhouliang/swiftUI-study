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
    @State private var currentIndex: Int = 0
    
    // 分类VM
    @StateObject private var categoryVM = CategoryViewModel()
    
    var showNewsList:Bool{
        typeIndex == 0
    }
    
    // 分类数据
    private var categories: [String] {
        categoryVM.categoryies.map { category in
            category.name
        }
    }
    
    // 用户 vm
    @EnvironmentObject var userVM: UserViewModel
    // 是否触发登录页面跳转
    @State var showLogin: Bool = false
    // 是否触发登录页面跳转
    @State var showPointDetail: Bool = false
    
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
                NavigationLink(destination: LoginView(), isActive: $showLogin) {
                    Text("")
                }
                NavigationLink(destination: Text("详情页"), isActive: $showPointDetail) {
                    HStack {
                        Text("学习\n进度")
                        Text(userVM.isLogged ? "100%" : "%0")
                    }
                    .foregroundColor(.white)
                    .onTapGesture {
                        if !userVM.isLogged {
                            // 未登录：跳转到登录页
                            showLogin.toggle()
                        } else {
                            // 已登录：跳到用户详情页
                            showPointDetail.toggle()
                        }
                    }
                }
                
                
                Image(systemName: "bell")
            }
            
            // ["思想政治","法律法规","职业道德","诚信自律"]
            TabbarView(items: categories, isScrollable: true, selection: $tabIndex)
                .frame(height: 55)
                .background(.blue.opacity(0.1))
                .onChange(of: tabIndex) { oldValue, newValue in
                    print(newValue)
                }
                .redacted(reason: categoryVM.loaded ? [] :.placeholder) // 数据没加载出来之前的占位显示
            
            ScrollView {
                LazyVStack(spacing: 0){  // 只支持 iOS14.0+
                    TabbarView(items: categoryVM.types, selection: $typeIndex, showIndicator: false)
                        .frame(height: 55)
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
                        ArticleListView()
                    } else {
                        VideoListView()
                    }
                    
                }
            }
        }
        .navigationBarHidden(true)
    }
}


//#Preview {
//    StudyPage().ignoresSafeArea()
//}
