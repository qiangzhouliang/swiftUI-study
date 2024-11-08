//
//  OverView.swift
//  NewsApp
//
//  Created by swan on 2024/11/6.
//

import SwiftUI

struct OverView: View {
    
    let padding:CGFloat = 8.0
    
    private var circleHeight: CGFloat {
        screen.width / 2 - padding * 2 - (screen.width / 2 - padding    * 2) / 4
    }
    private var circleOffsetY: CGFloat {
        (screen.width / 2 - padding    * 2) / 4 / 2
    }
    
    var body: some View {
        VStack {
            Text("学习任务")
                .frame(height: 45)
                .font(.system(size: 18))
            
            Text("学习周期：2021.01.01 - 2021.12.31")
                .font(.system(size: 12))
            
            ZStack(alignment: .center) {
                Circle()
                    .trim(from: 0.4, to: 1.0)  // 从那儿到哪儿
                    .stroke(style: StrokeStyle(lineWidth: 10))
                    .rotation(.degrees(18.5))
                    .frame(width: screen.width / 2 - padding * 2, height: screen.width / 2 - padding * 2)
                .foregroundColor(.gray.opacity(0.3))
                .offset(y:circleOffsetY)
                
                Circle()
                    .trim(from: 0.4, to: 0.6)  // 从那儿到哪儿
                    .stroke(style: StrokeStyle(lineWidth: 10))
                    .rotation(.degrees(18.5))
                    .frame(width: screen.width / 2 - padding * 2, height: screen.width / 2 - padding * 2)
                    .offset(y:circleOffsetY)
                
                VStack {
                    Text("10000分")
                        .font(.system(size: 36))
                    Text("学年积分")
                        .font(.system(size: 12))
                        .padding(.top, 4.0)
                }
            }
            .padding(.top, padding)
            .frame(height: circleHeight)
            
            HStack {
                Spacer()
                VStack {
                    Text("13500分")
                        .font(.system(size: 16))
                    Text("学年规定积分")
                        .font(.system(size: 12))
                }
                Spacer()
                VStack {
                    Text("3500分")
                        .font(.system(size: 16))
                    Text("还差")
                        .font(.system(size: 12))
                }
                Spacer()
            }
            
        }
        .padding(.top, safeAreaInsets?.top ?? 0)
        .foregroundColor(.white)
    }
}

#Preview {
    OverView().background(.green)
}
