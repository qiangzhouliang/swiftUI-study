@_private(sourceFile: "ChartView.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ChartBackgroundView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/ChartView.swift", line: 79)
        Path { path in
            path.move(to: CGPoint(x: __designTimeInteger("#59431.[2].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 0), y: circleRadius))
            
            // 滑背景线
            for index in __designTimeInteger("#59431.[2].[3].property.[0].[0].arg[0].value.[1].sequence.[0]", fallback: 0)...__designTimeInteger("#59431.[2].[3].property.[0].[0].arg[0].value.[1].sequence.[1]", fallback: 5) {
                path.move(to: CGPoint(x: __designTimeInteger("#59431.[2].[3].property.[0].[0].arg[0].value.[1].[0].modifier[0].arg[0].value.arg[0].value", fallback: 0), y: circleRadius + lineHeight * CGFloat(index)))
                path.addLine(to: CGPoint(x: proxy.size.width, y: circleRadius + lineHeight * CGFloat(index)))
            }
        }
        .stroke(style: StrokeStyle(lineWidth: __designTimeFloat("#59431.[2].[3].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 0.2), lineCap: .round))
        .fill(getColor(all: __designTimeInteger("#59431.[2].[3].property.[0].[0].modifier[1].arg[0].value.arg[0].value", fallback: 151)))
    
#sourceLocation()
    }
}

extension ChartView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/ChartView.swift", line: 28)
        GeometryReader { proxy in
            ZStack {
                // 画背景
                ChartBackgroundView(proxy: proxy, lineHeight: lineHeight, circleRadius: circleRadius)
                // 画线
                Path({ path in
                    
                    // 平均宽度
                    let averageOfWidth: CGFloat = proxy.size.width / __designTimeInteger("#59431.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].value.[0]", fallback: 7)
                    
                    // 将 坐标 移到第一天 0 积分位置
                    path.move(to: CGPoint(x: averageOfWidth / __designTimeInteger("#59431.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 2), y: lineHeight * CGFloat(lineCount) + circleRadius))
                    
                    for index in __designTimeInteger("#59431.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].sequence.[0]", fallback: 0)..<userPoints.count {
                        // x: 格的宽度（平均宽度）* 第几格 + 每一格子的一半 - 圆圈的半径
                        let x = averageOfWidth * CGFloat(index) + averageOfWidth / __designTimeInteger("#59431.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].[0].value.[0]", fallback: 2) - circleRadius
                        // y: 最大高度 - 积分 * 每个积分的高度 - 圆圈的半径
                        let y = lineHeight * lineCount - CGFloat(userPoints[index]) * perY
                        let point = CGPoint(x: x, y: y)
                        // 画圆
                        path.addRoundedRect(in: CGRect(origin: point, size: CGSize(width: circleRadius * __designTimeInteger("#59431.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].[3].modifier[0].arg[0].value.arg[1].value.arg[0].value.[0]", fallback: 2), height: circleRadius * __designTimeInteger("#59431.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].[3].modifier[0].arg[0].value.arg[1].value.arg[1].value.[0]", fallback: 2))), cornerSize: CGSize(width: circleRadius, height: circleRadius))
                        
                        // 画线
                        //将坐标点移到圆圈的中心
                        path.move(to: CGPoint(x: point.x + circleRadius, y: point.y + circleRadius))
                        if index < userPoints.count - 1 {
                            let x = averageOfWidth * CGFloat(index + __designTimeInteger("#59431.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].[5].[0].[0].value.[0]", fallback: 1)) + averageOfWidth / __designTimeInteger("#59431.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].[5].[0].[0].value.[1]", fallback: 2)
                            let y = lineHeight * lineCount - CGFloat(userPoints[index + __designTimeInteger("#59431.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].[5].[0].[1].value.[0]", fallback: 1)]) * perY + circleRadius
                            let nextPoint = CGPoint(x: x, y: y)
                            path.addLine(to: nextPoint)
                        }
                        
                    }
                }).stroke(style: StrokeStyle(lineWidth: __designTimeInteger("#59431.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 1), lineCap: .round))
                    .fill(themeColor)
                
            }
        }.frame(height: height)
    
#sourceLocation()
    }
}

extension ChartView {
    @_dynamicReplacement(for: height) private var __preview__height: CGFloat {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/ChartView.swift", line: 22)
        lineCount * lineHeight + circleRadius * __designTimeInteger("#59431.[1].[4].property.[0].[0].[0]", fallback: 2)
    
#sourceLocation()
    }
}

import struct NewsApp.ChartView
import struct NewsApp.ChartBackgroundView
#Preview {
    ChartView()
}



