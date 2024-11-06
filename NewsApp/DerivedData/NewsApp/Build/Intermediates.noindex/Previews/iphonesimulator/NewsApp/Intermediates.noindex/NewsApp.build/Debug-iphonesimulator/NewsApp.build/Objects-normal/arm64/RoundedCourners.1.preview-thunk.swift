@_private(sourceFile: "RoundedCourners.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension RoundedCorners_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/RoundedCourners.swift", line: 67)
        RoundedCorners(top: __designTimeFloat("#52082.[2].[0].property.[0].[0].arg[0].value", fallback: 10.0), background: LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
            .frame(width: __designTimeInteger("#52082.[2].[0].property.[0].[0].modifier[0].arg[0].value", fallback: 200),height: __designTimeInteger("#52082.[2].[0].property.[0].[0].modifier[0].arg[1].value", fallback: 200))
            .previewLayout(PreviewLayout.fixed(width: __designTimeInteger("#52082.[2].[0].property.[0].[0].modifier[1].arg[0].value.arg[0].value", fallback: 300), height: __designTimeInteger("#52082.[2].[0].property.[0].[0].modifier[1].arg[0].value.arg[1].value", fallback: 300)))
    
#sourceLocation()
    }
}

extension RoundedCorners {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/RoundedCourners.swift", line: 49)
        GeometryReader{ geometry in
            Path{ path in
                let w = geometry.size.width
                let h = geometry.size.height
                
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: __designTimeInteger("#52082.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[2].value.arg[0].value", fallback: -90)), endAngle: Angle(degrees: __designTimeInteger("#52082.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[3].value.arg[0].value", fallback: 0)), clockwise: __designTimeBoolean("#52082.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[4].value", fallback: false))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: __designTimeInteger("#52082.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].modifier[0].arg[2].value.arg[0].value", fallback: 0)), endAngle: Angle(degrees: __designTimeInteger("#52082.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].modifier[0].arg[3].value.arg[0].value", fallback: 90)), clockwise: __designTimeBoolean("#52082.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].modifier[0].arg[4].value", fallback: false))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: __designTimeInteger("#52082.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[4].modifier[0].arg[2].value.arg[0].value", fallback: 90)), endAngle: Angle(degrees: __designTimeInteger("#52082.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[4].modifier[0].arg[3].value.arg[0].value", fallback: 180)), clockwise: __designTimeBoolean("#52082.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[4].modifier[0].arg[4].value", fallback: false))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: __designTimeInteger("#52082.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[5].modifier[0].arg[2].value.arg[0].value", fallback: 180)), endAngle: Angle(degrees: __designTimeInteger("#52082.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[5].modifier[0].arg[3].value.arg[0].value", fallback: 270)), clockwise: __designTimeBoolean("#52082.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[5].modifier[0].arg[4].value", fallback: false))
            }
            .fill(background)
            
        }
    
#sourceLocation()
    }
}

import struct NewsApp.RoundedCorners
import struct NewsApp.RoundedCorners_Previews

