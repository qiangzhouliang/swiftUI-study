//
//  TabbarView.swift
//  NewsApp
//
//  Created by swan on 2024/11/5.
//

import SwiftUI

struct TabbarItem:Identifiable {
    var id = UUID()
    var index: Int
    var text: String
}

struct TabbarView: View {
    var items:[String]
    /// 是否支持滚动
    var isScrollable: Bool = false
    var selection: Binding<Int>?
    /// 是否显示指示器
    var showIndicator: Bool? = true
    
    private var tabItems:[TabbarItem]{
        var index = -1
        return items.map { strItem in
            index += 1
            return TabbarItem(index: index, text: strItem)
        }
    }
    
    var body: some View{
        GeometryReader {reader in
            if isScrollable {
                ScrollView(.horizontal, showsIndicators: false) {
                    ScrollViewReader { proxy in
                        TabbarSubview(items: tabItems, width: reader.size.width, height: reader.size.height, proxy: proxy, selection: selection, showIndicator: showIndicator)
                    }
                }
            } else {
                TabbarSubview(items: tabItems,width: reader.size.width, height: reader.size.height, selection: selection, showIndicator: showIndicator)
            }
        }
    }
    
}

struct TabbarSubview: View {
    var items: [TabbarItem]
    var width: CGFloat
    var height:CGFloat
    
    var proxy: ScrollViewProxy?
    var selection: Binding<Int>?
    /// 是否显示指示器
    var showIndicator: Bool? = true
    
    private let indicatorHeight: CGFloat = 2
    private var itemTextSelectColor: Color {
        Color(.sRGB, red: 20/255.0, green: 158/255.0, blue: 231/255.0, opacity: 1)
    }
    private var itemTextUnSelectColor: Color {
        Color(.sRGB, red: 102/255.0, green: 102/255.0, blue: 102/255.0, opacity: 1)
    }
    
    private var itemWidth: CGFloat {
        if items.count > 4 {
            width / 4
        } else {
            width / CGFloat(items.count)
        }
    }
    
    /// 选中的下标
    @State private var selectedIndex = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 0) {
                ForEach(items) { item in
                    Text(item.text)
                        .frame(width: itemWidth)
                        .foregroundColor(selectedIndex == item.index ? itemTextSelectColor : itemTextUnSelectColor)
                        .onTapGesture {
                            selectedIndex = item.index
                            selection?.wrappedValue = item.index
                            
                            // 计算剩余可滚动宽度
                            let surplusW = (CGFloat(items.count) - CGFloat(selectedIndex)) * itemWidth
                            let halfOfWidth = width / 2
                            
                            withAnimation {
                                if halfOfWidth >= surplusW {
                                    proxy?.scrollTo(item.id)
                                } else {
                                    proxy?.scrollTo(item.id, anchor: .center)
                                }
                            }
                        }
                        .id(item.id)
                        .frame(height: height - indicatorHeight)
                }
            }
            
            if showIndicator == true {
                Divider()
                    .frame(width: itemWidth, height: indicatorHeight)
                    .background(itemTextSelectColor)
                    .offset(x: CGFloat(selectedIndex) * itemWidth)
                    .animation(.easeInOut, value: 0.3)
            }
        }
    }
}

#Preview {
    TabbarView(items: ["String","String","String","String","String","String"],isScrollable: true)
        .frame(height: 55)
        .background(.blue.opacity(0.5))
}
