//
//  AppBarView.swift
//  NewsApp
//
//  Created by swan on 2024/11/5.
//

import SwiftUI

struct AppBarView<Content: View>: View {
    let safeAreaInsets = UIApplication.shared.windows.first?.safeAreaInsets
    private let padding:CGFloat = 8.0
    
    private let content: Content
    init(@ViewBuilder content:() -> Content) {
        self.content = content()
    }
    
    private var appBarHeight:CGFloat{
        //appBar 高度 + 流海高度 + 上下 padding
        45 + (safeAreaInsets?.top ?? 0) + padding * 2
    }
    
    var body: some View {
        HStack {
            content
        }
        .padding(.top, safeAreaInsets?.top ?? 0 + padding)
        .padding(.bottom, padding)
        .padding(.horizontal, 4.0)
        .foregroundColor(.white)
        .background(LinearGradient(gradient: Gradient(colors: [themeColor, getColor(red: 45, green: 205, blue: 245)]), startPoint: .leading, endPoint: .trailing))
    }
}

//#Preview {
//    AppBarView()
//}
