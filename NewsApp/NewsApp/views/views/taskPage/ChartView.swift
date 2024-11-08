//
//  ChartView.swift
//  NewsApp
//
//  Created by swan on 2024/11/6.
//

import SwiftUI

struct ChartView: View {
    // 每一行的高度
    var lineHeight:CGFloat = 24
    // 圆的半径
    var circleRadius:CGFloat = 2.5
    // 行数
    var lineCount: CGFloat = 5
    
    // 每个积分对应的高度
    let perY: CGFloat = 8
    
    var height: CGFloat {
        lineCount * lineHeight + circleRadius * 2
    }
    
    var userPoints: [CGFloat] = [0,2,6,9,10,15,5]
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                // 画背景
                ChartBackgroundView(proxy: proxy, lineHeight: lineHeight, circleRadius: circleRadius)
                // 画线
                Path({ path in
                    
                    // 平均宽度
                    let averageOfWidth: CGFloat = proxy.size.width / 7
                    
                    // 将 坐标 移到第一天 0 积分位置
                    path.move(to: CGPoint(x: averageOfWidth / 2, y: lineHeight * CGFloat(lineCount) + circleRadius))
                    
                    for index in 0..<userPoints.count {
                        // x: 格的宽度（平均宽度）* 第几格 + 每一格子的一半 - 圆圈的半径
                        let x = averageOfWidth * CGFloat(index) + averageOfWidth / 2 - circleRadius
                        // y: 最大高度 - 积分 * 每个积分的高度 - 圆圈的半径
                        let y = lineHeight * lineCount - CGFloat(userPoints[index]) * perY
                        let point = CGPoint(x: x, y: y)
                        // 画圆
                        path.addRoundedRect(in: CGRect(origin: point, size: CGSize(width: circleRadius * 2, height: circleRadius * 2)), cornerSize: CGSize(width: circleRadius, height: circleRadius))
                        
                        // 画线
                        //将坐标点移到圆圈的中心
                        path.move(to: CGPoint(x: point.x + circleRadius, y: point.y + circleRadius))
                        if index < userPoints.count - 1 {
                            let x = averageOfWidth * CGFloat(index + 1) + averageOfWidth / 2
                            let y = lineHeight * lineCount - CGFloat(userPoints[index + 1]) * perY + circleRadius
                            let nextPoint = CGPoint(x: x, y: y)
                            path.addLine(to: nextPoint)
                        }
                        
                    }
                }).stroke(style: StrokeStyle(lineWidth: 1, lineCap: .round))
                    .fill(themeColor)
                
            }
        }.frame(height: height)
    }
}

struct ChartBackgroundView: View {
    
    var proxy: GeometryProxy
    
    // 每一行的高度
    var lineHeight:CGFloat
    // 圆的半径
    var circleRadius:CGFloat
    
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: circleRadius))
            
            // 滑背景线
            for index in 0...5 {
                path.move(to: CGPoint(x: 0, y: circleRadius + lineHeight * CGFloat(index)))
                path.addLine(to: CGPoint(x: proxy.size.width, y: circleRadius + lineHeight * CGFloat(index)))
            }
        }
        .stroke(style: StrokeStyle(lineWidth: 0.2, lineCap: .round))
        .fill(getColor(all: 151))
    }
}

#Preview {
    ChartView()
}
