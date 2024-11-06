@_private(sourceFile: "MineItemView.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension MineItemView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/mine/MineItemView.swift", line: 18)
        VStack {
            HStack{
                Image(image)
                    .resizable()
                    .frame(width: __designTimeInteger("#138567.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 16), height: __designTimeInteger("#138567.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 16))
                    .padding(.leading)
                
                Text(title)
                    .padding(.leading, __designTimeInteger("#138567.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[1].value", fallback: 4))
                
                Spacer()
                
                Image(systemName: __designTimeString("#138567.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value", fallback: "chevron.forward"))
                    .padding(.trailing)
            }
            .padding(.top, __designTimeInteger("#138567.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[1].value", fallback: 12))
            .padding(.bottom, __designTimeInteger("#138567.[1].[3].property.[0].[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 3))
            .padding(.bottom, showDivider == __designTimeBoolean("#138567.[1].[3].property.[0].[0].arg[0].value.[0].modifier[2].arg[1].value.if.[0]", fallback: true) ? __designTimeInteger("#138567.[1].[3].property.[0].[0].arg[0].value.[0].modifier[2].arg[1].value.then", fallback: 0) : __designTimeFloat("#138567.[1].[3].property.[0].[0].arg[0].value.[0].modifier[2].arg[1].value.else", fallback: 5.0))
            
            if showDivider == true {
                Divider().padding(.leading, __designTimeInteger("#138567.[1].[3].property.[0].[0].arg[0].value.[1].[0].[0].modifier[0].arg[1].value", fallback: 44))
            }
        }
    
#sourceLocation()
    }
}

import struct NewsApp.MineItemView
#Preview {
    MineItemView(image: "", title: "测试")
}



