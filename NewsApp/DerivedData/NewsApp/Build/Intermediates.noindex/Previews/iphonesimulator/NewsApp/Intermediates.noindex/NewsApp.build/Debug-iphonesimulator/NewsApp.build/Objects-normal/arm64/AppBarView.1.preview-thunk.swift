@_private(sourceFile: "AppBarView.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension AppBarView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/AppBarView.swift", line: 12)
        HStack {
            
        }
        .padding(.top, padding)
        .padding(.bottom, padding)
        .padding(.horizontal, __designTimeFloat("#63549.[1].[0].property.[0].[0].modifier[2].arg[1].value", fallback: 4.0))
        .foregroundColor(.white)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: __designTimeInteger("#63549.[1].[0].property.[0].[0].modifier[4].arg[0].value.arg[0].value.arg[0].value.[0].arg[0].value.[0]", fallback: 20)/__designTimeFloat("#63549.[1].[0].property.[0].[0].modifier[4].arg[0].value.arg[0].value.arg[0].value.[0].arg[0].value.[1]", fallback: 255.0), green: __designTimeInteger("#63549.[1].[0].property.[0].[0].modifier[4].arg[0].value.arg[0].value.arg[0].value.[0].arg[1].value.[0]", fallback: 158)/__designTimeFloat("#63549.[1].[0].property.[0].[0].modifier[4].arg[0].value.arg[0].value.arg[0].value.[0].arg[1].value.[1]", fallback: 255.0), blue: __designTimeInteger("#63549.[1].[0].property.[0].[0].modifier[4].arg[0].value.arg[0].value.arg[0].value.[0].arg[2].value.[0]", fallback: 231)/__designTimeFloat("#63549.[1].[0].property.[0].[0].modifier[4].arg[0].value.arg[0].value.arg[0].value.[0].arg[2].value.[1]", fallback: 255.0)), Color(red: __designTimeInteger("#63549.[1].[0].property.[0].[0].modifier[4].arg[0].value.arg[0].value.arg[0].value.[1].arg[0].value.[0]", fallback: 45)/__designTimeFloat("#63549.[1].[0].property.[0].[0].modifier[4].arg[0].value.arg[0].value.arg[0].value.[1].arg[0].value.[1]", fallback: 255.0), green: __designTimeInteger("#63549.[1].[0].property.[0].[0].modifier[4].arg[0].value.arg[0].value.arg[0].value.[1].arg[1].value.[0]", fallback: 205)/__designTimeFloat("#63549.[1].[0].property.[0].[0].modifier[4].arg[0].value.arg[0].value.arg[0].value.[1].arg[1].value.[1]", fallback: 255.0), blue: __designTimeInteger("#63549.[1].[0].property.[0].[0].modifier[4].arg[0].value.arg[0].value.arg[0].value.[1].arg[2].value.[0]", fallback: 245)/__designTimeFloat("#63549.[1].[0].property.[0].[0].modifier[4].arg[0].value.arg[0].value.arg[0].value.[1].arg[2].value.[1]", fallback: 255.0))]), startPoint: .leading, endPoint: .trailing))
    
#sourceLocation()
    }
}

import struct NewsApp.AppBarView
#Preview {
    AppBarView()
}



