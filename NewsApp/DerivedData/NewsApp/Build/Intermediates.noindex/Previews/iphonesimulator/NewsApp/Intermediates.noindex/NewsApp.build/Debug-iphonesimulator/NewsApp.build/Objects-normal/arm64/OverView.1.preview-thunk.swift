@_private(sourceFile: "OverView.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension OverView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/OverView.swift", line: 22)
        VStack {
            Text(__designTimeString("#31433.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "学习任务"))
                .frame(height: __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 45))
                .font(.system(size: __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 18)))
            
            Text(__designTimeString("#31433.[1].[3].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "学习周期：2021.01.01 - 2021.12.31"))
                .font(.system(size: __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 12)))
            
            ZStack(alignment: .center) {
                Circle()
                    .trim(from: __designTimeFloat("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value", fallback: 0.4), to: __designTimeFloat("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[1].value", fallback: 1.0))  // 从那儿到哪儿
                    .stroke(style: StrokeStyle(lineWidth: __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 10)))
                    .rotation(.degrees(__designTimeFloat("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: 18.5)))
                    .frame(width: screen.width / __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[3].arg[0].value.[0]", fallback: 2) - padding * __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[3].arg[0].value.[1]", fallback: 2), height: screen.width / __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[3].arg[1].value.[0]", fallback: 2) - padding * __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[3].arg[1].value.[1]", fallback: 2))
                .foregroundColor(.gray.opacity(__designTimeFloat("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
                .offset(y:circleOffsetY)
                
                Circle()
                    .trim(from: __designTimeFloat("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[0].value", fallback: 0.4), to: __designTimeFloat("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[1].value", fallback: 0.6))  // 从那儿到哪儿
                    .stroke(style: StrokeStyle(lineWidth: __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[1].modifier[1].arg[0].value.arg[0].value", fallback: 10)))
                    .rotation(.degrees(__designTimeFloat("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[1].modifier[2].arg[0].value.arg[0].value", fallback: 18.5)))
                    .frame(width: screen.width / __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[1].modifier[3].arg[0].value.[0]", fallback: 2) - padding * __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[1].modifier[3].arg[0].value.[1]", fallback: 2), height: screen.width / __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[1].modifier[3].arg[1].value.[0]", fallback: 2) - padding * __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[1].modifier[3].arg[1].value.[1]", fallback: 2))
                    .offset(y:circleOffsetY)
                
                VStack {
                    Text(__designTimeString("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "10000分"))
                        .font(.system(size: __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[2].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 36)))
                    Text(__designTimeString("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[2].arg[0].value.[1].arg[0].value", fallback: "学年积分"))
                        .font(.system(size: __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[2].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 12)))
                        .padding(.top, __designTimeFloat("#31433.[1].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[2].arg[0].value.[1].modifier[1].arg[1].value", fallback: 4.0))
                }
            }
            .padding(.top, padding)
            .frame(height: circleHeight)
            
            HStack {
                Spacer()
                VStack {
                    Text(__designTimeString("#31433.[1].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "13500分"))
                        .font(.system(size: __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 16)))
                    Text(__designTimeString("#31433.[1].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[0].value.[1].arg[0].value", fallback: "学年规定积分"))
                        .font(.system(size: __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 12)))
                }
                Spacer()
                VStack {
                    Text(__designTimeString("#31433.[1].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[0].arg[0].value", fallback: "3500分"))
                        .font(.system(size: __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 16)))
                    Text(__designTimeString("#31433.[1].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[1].arg[0].value", fallback: "还差"))
                        .font(.system(size: __designTimeInteger("#31433.[1].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 12)))
                }
                Spacer()
            }
            
        }
        .padding(.top, safeAreaInsets?.top ?? __designTimeInteger("#31433.[1].[3].property.[0].[0].modifier[0].arg[1].value.[0]", fallback: 0))
        .foregroundColor(.white)
    
#sourceLocation()
    }
}

extension OverView {
    @_dynamicReplacement(for: circleOffsetY) private var __preview__circleOffsetY: CGFloat {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/OverView.swift", line: 18)
        (screen.width / __designTimeInteger("#31433.[1].[2].property.[0].[0].[0]", fallback: 2) - padding    * __designTimeInteger("#31433.[1].[2].property.[0].[0].[1]", fallback: 2)) / __designTimeInteger("#31433.[1].[2].property.[0].[0].[2]", fallback: 4) / __designTimeInteger("#31433.[1].[2].property.[0].[0].[3]", fallback: 2)
    
#sourceLocation()
    }
}

extension OverView {
    @_dynamicReplacement(for: circleHeight) private var __preview__circleHeight: CGFloat {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/OverView.swift", line: 15)
        screen.width / __designTimeInteger("#31433.[1].[1].property.[0].[0].[0]", fallback: 2) - padding * __designTimeInteger("#31433.[1].[1].property.[0].[0].[1]", fallback: 2) - (screen.width / __designTimeInteger("#31433.[1].[1].property.[0].[0].[2]", fallback: 2) - padding    * __designTimeInteger("#31433.[1].[1].property.[0].[0].[3]", fallback: 2)) / __designTimeInteger("#31433.[1].[1].property.[0].[0].[4]", fallback: 4)
    
#sourceLocation()
    }
}

import struct NewsApp.OverView
#Preview {
    OverView().background(.green)
}



