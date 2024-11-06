@_private(sourceFile: "DailyTask.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension itemView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/DailyTask.swift", line: 36)
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: __designTimeInteger("#108864.[2].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 16)))
                if isIcon {
                    Text("\(Int(totalProgress))\(subTitle)")
                        .font(.system(size: __designTimeInteger("#108864.[2].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[1].[0].[0].[1]", fallback: 14))) + Text(Image(__designTimeString("#108864.[2].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[1].[0].[0].[2]", fallback: "question_mark")))
                } else {
                    Text("\(Int(totalProgress))\(subTitle)")
                        .font(.system(size: __designTimeInteger("#108864.[2].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[1].[1].[0].modifier[0].arg[0].value.arg[0].value", fallback: 14)))
                }
                
                HStack {
                    ProgressView(value: curProgress / totalProgress)
                        .frame(width: screen.width / __designTimeInteger("#108864.[2].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].modifier[0].arg[0].value.[0]", fallback: 3))
                        .accentColor(themeColor)
                    Text("已获得\(Int(curProgress))积分/每日上限\(Int(totalProgress))积分")
                        .font(.system(size: __designTimeInteger("#108864.[2].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 10)))
                }
            }
            Spacer()
            var button = Button(isComplate ? __designTimeString("#108864.[2].[6].property.[0].[0].arg[0].value.[2].value.arg[0].value.then", fallback: "已完成") : __designTimeString("#108864.[2].[6].property.[0].[0].arg[0].value.[2].value.arg[0].value.else", fallback: "去学习")) {}
                .font(.system(size: __designTimeInteger("#108864.[2].[6].property.[0].[0].arg[0].value.[2].value.modifier[0].arg[0].value.arg[0].value", fallback: 14)))
                .padding(.horizontal)
                .padding(.vertical, __designTimeFloat("#108864.[2].[6].property.[0].[0].arg[0].value.[2].value.modifier[2].arg[1].value", fallback: 5.0))
            
            if isComplate {
                button
                    .foregroundColor(getColor(all: __designTimeInteger("#108864.[2].[6].property.[0].[0].arg[0].value.[3].[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 204)))
                    .background(getColor(all: __designTimeInteger("#108864.[2].[6].property.[0].[0].arg[0].value.[3].[0].[0].modifier[1].arg[0].value.arg[0].value", fallback: 238)))
                    .clipShape(Capsule())
                    .disabled(__designTimeBoolean("#108864.[2].[6].property.[0].[0].arg[0].value.[3].[0].[0].modifier[3].arg[0].value", fallback: true))
            } else {
                button
                    .foregroundColor(getColor(red: __designTimeInteger("#108864.[2].[6].property.[0].[0].arg[0].value.[3].[1].[0].modifier[0].arg[0].value.arg[0].value", fallback: 255), green: __designTimeInteger("#108864.[2].[6].property.[0].[0].arg[0].value.[3].[1].[0].modifier[0].arg[0].value.arg[1].value", fallback: 89), blue: __designTimeInteger("#108864.[2].[6].property.[0].[0].arg[0].value.[3].[1].[0].modifier[0].arg[0].value.arg[2].value", fallback: 0)))
                    .overlay(
                        Capsule()
                            .stroke()
                            .foregroundColor(getColor(red: __designTimeInteger("#108864.[2].[6].property.[0].[0].arg[0].value.[3].[1].[0].modifier[1].arg[0].value.modifier[1].arg[0].value.arg[0].value", fallback: 255), green: __designTimeInteger("#108864.[2].[6].property.[0].[0].arg[0].value.[3].[1].[0].modifier[1].arg[0].value.modifier[1].arg[0].value.arg[1].value", fallback: 89), blue: __designTimeInteger("#108864.[2].[6].property.[0].[0].arg[0].value.[3].[1].[0].modifier[1].arg[0].value.modifier[1].arg[0].value.arg[2].value", fallback: 0))))
            }
        }
    
#sourceLocation()
    }
}

extension itemView {
    @_dynamicReplacement(for: isComplate) private var __preview__isComplate: Bool {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/DailyTask.swift", line: 32)
        curProgress >= totalProgress
    
#sourceLocation()
    }
}

extension DailyTask {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/DailyTask.swift", line: 12)
        VStack {
            itemView(title: __designTimeString("#108864.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "登录"), subTitle: __designTimeString("#108864.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value", fallback: "积分/每人首次登录"), curProgress: __designTimeInteger("#108864.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value", fallback: 5), totalProgress: __designTimeInteger("#108864.[1].[0].property.[0].[0].arg[0].value.[0].arg[3].value", fallback: 5))
            Divider()
            itemView(title: __designTimeString("#108864.[1].[0].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "文章学习"), subTitle: __designTimeString("#108864.[1].[0].property.[0].[0].arg[0].value.[2].arg[1].value", fallback: "积分/每有效阅读一篇文章"), curProgress: __designTimeInteger("#108864.[1].[0].property.[0].[0].arg[0].value.[2].arg[2].value", fallback: 50), totalProgress: __designTimeInteger("#108864.[1].[0].property.[0].[0].arg[0].value.[2].arg[3].value", fallback: 100), isIcon: __designTimeBoolean("#108864.[1].[0].property.[0].[0].arg[0].value.[2].arg[4].value", fallback: true))
            Divider()
            itemView(title: __designTimeString("#108864.[1].[0].property.[0].[0].arg[0].value.[4].arg[0].value", fallback: "视听学习"), subTitle: __designTimeString("#108864.[1].[0].property.[0].[0].arg[0].value.[4].arg[1].value", fallback: "积分/每有效观看视频或收听音频累计"), curProgress: __designTimeInteger("#108864.[1].[0].property.[0].[0].arg[0].value.[4].arg[2].value", fallback: 50), totalProgress: __designTimeInteger("#108864.[1].[0].property.[0].[0].arg[0].value.[4].arg[3].value", fallback: 100), isIcon: __designTimeBoolean("#108864.[1].[0].property.[0].[0].arg[0].value.[4].arg[4].value", fallback: true))
        }
    
#sourceLocation()
    }
}

import struct NewsApp.DailyTask
import struct NewsApp.itemView
#Preview {
    DailyTask()
}



