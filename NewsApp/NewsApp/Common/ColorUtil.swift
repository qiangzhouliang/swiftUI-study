//
//  ColorUtil.swift
//  NewsApp
//
//  Created by swan on 2024/11/6.
//

import SwiftUI

/// 生成 Color
func getColor(red: Double, green: Double, blue: Double, opacity: Double = 1) -> Color {
    return Color(.sRGB, red: red/255, green: green/255, blue: blue/255, opacity: opacity)
}

/// 生成 Color
func getColor(all: Double, opacity: Double = 1) -> Color {
    return Color(.sRGB, red: all/255, green: all/255, blue: all/255, opacity: opacity)
}

/// themeColor 主题色
var themeColor: Color {
    getColor(red: 20, green: 158, blue: 231)
}

/// contentColor 内容颜色
var contentColor: Color {
    getColor(all: 151)
}

/// 内容字体大小
var contentFont: Font {
    .system(size: 12)
}
