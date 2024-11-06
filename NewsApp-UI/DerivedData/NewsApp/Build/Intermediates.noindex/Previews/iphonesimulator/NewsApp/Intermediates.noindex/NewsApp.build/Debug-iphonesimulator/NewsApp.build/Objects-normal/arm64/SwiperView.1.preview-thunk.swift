@_private(sourceFile: "SwiperView.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension SwiperView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/SwiperView.swift", line: 15)
        ZStack(alignment: .bottom) {
            Swiper(items: [
                Color.yellow,
                .blue,
                .red,
                .green
            ], currentPage: $currentIndex)
            SwiperControl(numOfPages: __designTimeInteger("#108418.[1].[1].property.[0].[0].arg[1].value.[1].arg[0].value", fallback: 4), currentPage: $currentIndex)
        }
    
#sourceLocation()
    }
}

import struct NewsApp.SwiperView
#Preview {
    SwiperView()
}



