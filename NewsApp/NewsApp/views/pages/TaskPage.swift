//
//  TaskPage.swift
//  NewsApp
//
//  Created by swan on 2024/11/5.
//

import SwiftUI

struct TaskPage: View {
    
    @State var overViewSize: CGSize = .zero
    
    let padding: CGFloat = 8.0
    
    var body: some View {
        
        ZStack(alignment: .top) {
            // 背景
            LinearGradient(gradient: Gradient(colors: [getColor(red: 20, green: 158, blue: 231), getColor(red: 255, green: 255, blue: 255)]), startPoint: .top, endPoint: .bottom)
            // 学习任务
            OverView()
                .measureSize { size in
                    overViewSize = size
                }
            // 学习明细
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(spacing: 0) {
                        
                        Color.clear.frame(height: overViewSize.height + padding * 2)
                        
                        HStack(){
                            Text("学习明细")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(RoundedCorners(top: 15.0, background: .white))
                        
                        HStack {
                            Text("最近一周获得积分情况")
                                .font(.system(size: 14))
                                .foregroundColor(getColor(red: 151, green: 151, blue: 151))
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
                        HStack(spacing: 0) {
                            ForEach(getWeekDate(), id: \.self) { item in
                                Text(item)
                                    .frame(width: (screen.width - 30)/7)
                                    .foregroundColor(contentColor)
                                    .font(contentFont)
                            }
                        }.frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .background(.white)
                        
                        // 今日获得积分
                        HStack {
                            Text("今日获取0积分，快去完成下面的任务吧")
                                .foregroundColor(themeColor)
                                .font(.system(size: 14))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .background(themeColor.opacity(0.1))
                                .cornerRadius(5)
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
    }
    
    func getWeekDate() -> [String] {
        var dates:[String] = []
        dates.append("今日")
        
        for index in 1...6 {
            // 距离今天的时间
            let sinceTime = index * -24 * 60 * 60
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
    }
}

#Preview {
    TaskPage().ignoresSafeArea()
}
