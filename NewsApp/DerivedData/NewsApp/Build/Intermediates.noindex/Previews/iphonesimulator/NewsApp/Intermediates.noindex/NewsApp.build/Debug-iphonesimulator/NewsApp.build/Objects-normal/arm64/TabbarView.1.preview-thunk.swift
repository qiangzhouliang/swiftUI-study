@_private(sourceFile: "TabbarView.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension TabbarSubview {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/TabbarView.swift", line: 78)
        VStack(alignment: .leading, spacing: __designTimeInteger("#65796.[3].[11].property.[0].[0].arg[1].value", fallback: 0)) {
            HStack(spacing: __designTimeInteger("#65796.[3].[11].property.[0].[0].arg[2].value.[0].arg[0].value", fallback: 0)) {
                ForEach(items) { item in
                    Text(item.text)
                        .frame(width: itemWidth)
                        .foregroundColor(selectedIndex == item.index ? itemTextSelectColor : itemTextUnSelectColor)
                        .onTapGesture {
                            selectedIndex = item.index
                            selection?.wrappedValue = item.index
                            
                            // 计算剩余可滚动宽度
                            let surplusW = (CGFloat(items.count) - CGFloat(selectedIndex)) * itemWidth
                            let halfOfWidth = width / __designTimeInteger("#65796.[3].[11].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.[3].value.[0]", fallback: 2)
                            
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
                    .animation(.easeInOut, value: __designTimeFloat("#65796.[3].[11].property.[0].[0].arg[2].value.[1].[0].[0].modifier[3].arg[1].value", fallback: 0.3))
            }
        }
    
#sourceLocation()
    }
}

extension TabbarSubview {
    @_dynamicReplacement(for: itemWidth) private var __preview__itemWidth: CGFloat {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/TabbarView.swift", line: 67)
        if items.count > 4 {
            width / __designTimeInteger("#65796.[3].[9].property.[0].[0].[0].[0].[0]", fallback: 4)
        } else {
            width / CGFloat(items.count)
        }
    
#sourceLocation()
    }
}

extension TabbarSubview {
    @_dynamicReplacement(for: itemTextUnSelectColor) private var __preview__itemTextUnSelectColor: Color {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/TabbarView.swift", line: 63)
        Color(.sRGB, red: __designTimeInteger("#65796.[3].[8].property.[0].[0].arg[1].value.[0]", fallback: 102)/__designTimeFloat("#65796.[3].[8].property.[0].[0].arg[1].value.[1]", fallback: 255.0), green: __designTimeInteger("#65796.[3].[8].property.[0].[0].arg[2].value.[0]", fallback: 102)/__designTimeFloat("#65796.[3].[8].property.[0].[0].arg[2].value.[1]", fallback: 255.0), blue: __designTimeInteger("#65796.[3].[8].property.[0].[0].arg[3].value.[0]", fallback: 102)/__designTimeFloat("#65796.[3].[8].property.[0].[0].arg[3].value.[1]", fallback: 255.0), opacity: __designTimeInteger("#65796.[3].[8].property.[0].[0].arg[4].value", fallback: 1))
    
#sourceLocation()
    }
}

extension TabbarSubview {
    @_dynamicReplacement(for: itemTextSelectColor) private var __preview__itemTextSelectColor: Color {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/TabbarView.swift", line: 60)
        Color(.sRGB, red: __designTimeInteger("#65796.[3].[7].property.[0].[0].arg[1].value.[0]", fallback: 20)/__designTimeFloat("#65796.[3].[7].property.[0].[0].arg[1].value.[1]", fallback: 255.0), green: __designTimeInteger("#65796.[3].[7].property.[0].[0].arg[2].value.[0]", fallback: 158)/__designTimeFloat("#65796.[3].[7].property.[0].[0].arg[2].value.[1]", fallback: 255.0), blue: __designTimeInteger("#65796.[3].[7].property.[0].[0].arg[3].value.[0]", fallback: 231)/__designTimeFloat("#65796.[3].[7].property.[0].[0].arg[3].value.[1]", fallback: 255.0), opacity: __designTimeInteger("#65796.[3].[7].property.[0].[0].arg[4].value", fallback: 1))
    
#sourceLocation()
    }
}

extension TabbarView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/TabbarView.swift", line: 33)
        GeometryReader {reader in
            if isScrollable {
                ScrollView(.horizontal, showsIndicators: __designTimeBoolean("#65796.[2].[5].property.[0].[0].arg[0].value.[0].[0].[0].arg[1].value", fallback: false)) {
                    ScrollViewReader { proxy in
                        TabbarSubview(items: tabItems, width: reader.size.width, height: reader.size.height, proxy: proxy, selection: selection, showIndicator: showIndicator)
                    }
                }
            } else {
                TabbarSubview(items: tabItems,width: reader.size.width, height: reader.size.height, selection: selection, showIndicator: showIndicator)
            }
        }
    
#sourceLocation()
    }
}

extension TabbarView {
    @_dynamicReplacement(for: tabItems) private var __preview__tabItems:[TabbarItem] {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/TabbarView.swift", line: 25)
        var index = __designTimeInteger("#65796.[2].[4].property.[0].[0].value", fallback: -1)
        return items.map { strItem in
            index += __designTimeInteger("#65796.[2].[4].property.[0].[1].modifier[0].arg[0].value.[0].[0]", fallback: 1)
            return TabbarItem(index: index, text: strItem)
        }
    
#sourceLocation()
    }
}

import struct NewsApp.TabbarItem
import struct NewsApp.TabbarView
import struct NewsApp.TabbarSubview
#Preview {
    TabbarView(items: ["String","String","String","String","String","String"],isScrollable: true)
        .frame(height: 55)
        .background(.blue.opacity(0.5))
}



