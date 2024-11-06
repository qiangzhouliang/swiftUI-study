@_private(sourceFile: "TaskPage.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension TaskPage {
    @_dynamicReplacement(for: getWeekDate()) private func __preview__getWeekDate() -> [String] {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/pages/TaskPage.swift", line: 97)
        var dates:[String] = []
        dates.append(__designTimeString("#28979.[1].[3].[1].modifier[0].arg[0].value", fallback: "今日"))
        
        for index in __designTimeInteger("#28979.[1].[3].[2].sequence.[0]", fallback: 1)...__designTimeInteger("#28979.[1].[3].[2].sequence.[1]", fallback: 6) {
            // 距离今天的时间
            let sinceTime = index * __designTimeInteger("#28979.[1].[3].[2].[0].value.[0]", fallback: -24) * __designTimeInteger("#28979.[1].[3].[2].[0].value.[1]", fallback: 60) * __designTimeInteger("#28979.[1].[3].[2].[0].value.[2]", fallback: 60)
            let date = Date(timeIntervalSinceNow: Double(sinceTime))
            let calendar = Calendar.current
            let comp = calendar.dateComponents([.month,.day], from: date)
            guard let day = comp.day, let month = comp.month else { return [] }
            
            var monthStr = "\(month)"
            if month < 10 {
                monthStr = "0\(month)"
            }
            
            var dayStr = "\(day)"
            if day < 10 {
                dayStr = "0\(day)"
            }
            
            dates.append("\(monthStr):\(dayStr)")
        }
        
        return dates.reversed()
    
#sourceLocation()
    }
}

extension TaskPage {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/pages/TaskPage.swift", line: 17)
        
        ZStack(alignment: .top) {
            // 背景
            LinearGradient(gradient: Gradient(colors: [getColor(red: __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[0].arg[0].value.arg[0].value.[0].arg[0].value", fallback: 20), green: __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[0].arg[0].value.arg[0].value.[0].arg[1].value", fallback: 158), blue: __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[0].arg[0].value.arg[0].value.[0].arg[2].value", fallback: 231)), getColor(red: __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[0].arg[0].value.arg[0].value.[1].arg[0].value", fallback: 255), green: __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[0].arg[0].value.arg[0].value.[1].arg[1].value", fallback: 255), blue: __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[0].arg[0].value.arg[0].value.[1].arg[2].value", fallback: 255))]), startPoint: .top, endPoint: .bottom)
            // 学习任务
            OverView()
                .measureSize { size in
                    overViewSize = size
                }
            // 学习明细
            VStack {
                ScrollView(.vertical, showsIndicators: __designTimeBoolean("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[1].value", fallback: false)) {
                    LazyVStack(spacing: __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[0].value", fallback: 0)) {
                        
                        Color.clear.frame(height: overViewSize.height + padding * __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[0]", fallback: 2))
                        
                        HStack(){
                            Text(__designTimeString("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: "学习明细"))
                                .font(.system(size: __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[1].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 16)))
                                .fontWeight(.bold)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(RoundedCorners(top: __designTimeFloat("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[1].modifier[2].arg[0].value.arg[0].value", fallback: 15.0), background: .white))
                        
                        HStack {
                            Text(__designTimeString("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "最近一周获得积分情况"))
                                .font(.system(size: __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[2].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 14)))
                                .foregroundColor(getColor(red: __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[2].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 151), green: __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[2].arg[0].value.[0].modifier[1].arg[0].value.arg[1].value", fallback: 151), blue: __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[2].arg[0].value.[0].modifier[1].arg[0].value.arg[2].value", fallback: 151)))
                        }.frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .background(.white)
                        
                        // 折线图
                        HStack {
                            ChartView()
                        }.frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .background(.white)
                        
                        // 日期
                        HStack(spacing: __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[4].arg[0].value", fallback: 0)) {
                            ForEach(getWeekDate(), id: \.self) { item in
                                Text(item)
                                    .frame(width: (screen.width - __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[4].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.[0]", fallback: 30))/__designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[4].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.[1]", fallback: 7))
                                    .foregroundColor(contentColor)
                                    .font(contentFont)
                            }
                        }.frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .background(.white)
                        
                        // 今日获得积分
                        HStack {
                            Text(__designTimeString("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[5].arg[0].value.[0].arg[0].value", fallback: "今日获取0积分，快去完成下面的任务吧"))
                                .foregroundColor(themeColor)
                                .font(.system(size: __designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[5].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 14)))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .background(themeColor.opacity(__designTimeFloat("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[5].arg[0].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 0.1)))
                                .cornerRadius(__designTimeInteger("#28979.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[5].arg[0].value.[0].modifier[5].arg[0].value", fallback: 5))
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.white)
                        
                        // 获取积分任务列表
                        DailyTask().frame(maxWidth: .infinity)
                            .padding()
                            .background(.white)
                    }
                }
            }
        }
    
#sourceLocation()
    }
}

import struct NewsApp.TaskPage
#Preview {
    TaskPage().ignoresSafeArea()
}



