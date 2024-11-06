//
//  DailyTask.swift
//  NewsApp
//
//  Created by swan on 2024/11/6.
// 获取积分任务列表

import SwiftUI

struct DailyTask: View {
    var body: some View {
        VStack {
            itemView(title: "登录", subTitle: "积分/每人首次登录", curProgress: 5, totalProgress: 5)
            Divider()
            itemView(title: "文章学习", subTitle: "积分/每有效阅读一篇文章", curProgress: 50, totalProgress: 100, isIcon: true)
            Divider()
            itemView(title: "视听学习", subTitle: "积分/每有效观看视频或收听音频累计", curProgress: 50, totalProgress: 100, isIcon: true)
        }
    }
}

/// 封装item
struct itemView: View {
    var title: String
    var subTitle: String
    var curProgress: Double
    var totalProgress: Double
    
    var isIcon: Bool = false
    
    private var isComplate: Bool {
        curProgress >= totalProgress
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 16))
                if isIcon {
                    Text("\(Int(totalProgress))\(subTitle)")
                        .font(.system(size: 14)) + Text(Image("question_mark"))
                } else {
                    Text("\(Int(totalProgress))\(subTitle)")
                        .font(.system(size: 14))
                }
                
                HStack {
                    ProgressView(value: curProgress / totalProgress)
                        .frame(width: screen.width / 3)
                        .accentColor(themeColor)
                    Text("已获得\(Int(curProgress))积分/每日上限\(Int(totalProgress))积分")
                        .font(.system(size: 10))
                }
            }
            Spacer()
            var button = Button(isComplate ? "已完成" : "去学习") {}
                .font(.system(size: 14))
                .padding(.horizontal)
                .padding(.vertical, 5.0)
            
            if isComplate {
                button
                    .foregroundColor(getColor(all: 204))
                    .background(getColor(all: 238))
                    .clipShape(Capsule())
                    .disabled(true)
            } else {
                button
                    .foregroundColor(getColor(red: 255, green: 89, blue: 0))
                    .overlay(
                        Capsule()
                            .stroke()
                            .foregroundColor(getColor(red: 255, green: 89, blue: 0)))
            }
        }
    }
}

#Preview {
    DailyTask()
}
