@_private(sourceFile: "VideoDetail.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import _AVKit_SwiftUI
import AVFoundation
import SwiftUI

extension VideoDetail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/swiftUI-study/NewsApp/NewsApp/views/pages/VideoDetail.swift", line: 23)
        var avPlayer: AVPlayer? = nil
        if let url = URL(string: videoVM.videoUrl) {
            avPlayer = AVPlayer(url: url)
        }
        
        return VStack {
            VideoPlayer(player: avPlayer)
                .aspectRatio(__designTimeInteger("#10384.[3].[4].property.[0].[2].arg[0].value.[0].modifier[0].arg[0].value.[0]", fallback: 16)/__designTimeInteger("#10384.[3].[4].property.[0].[2].arg[0].value.[0].modifier[0].arg[0].value.[1]", fallback: 9), contentMode: .fit)
            
            ScrollView {
                Text("\(title)")
                    .font(.system(size: __designTimeInteger("#10384.[3].[4].property.[0].[2].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 16)))
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Color.gray.opacity(__designTimeFloat("#10384.[3].[4].property.[0].[2].arg[0].value.[1].arg[0].value.[1].modifier[0].arg[0].value", fallback: 0.3)).frame(height: __designTimeInteger("#10384.[3].[4].property.[0].[2].arg[0].value.[1].arg[0].value.[1].modifier[1].arg[0].value", fallback: 10))
                
                WebView(htmlString: videoVM.videoDesc,scrollHeight: $webViewContentHeight)
                    .frame(height: webViewContentHeight)
            }
        }
        .navigationTitle(__designTimeString("#10384.[3].[4].property.[0].[2].modifier[0].arg[0].value", fallback: "详情"))
        .onAppear(perform: {
            videoVM.info(videoId: videoId)
        })
    
#sourceLocation()
    }
}

import struct NewsApp.VideoDetail
#Preview {
    VideoDetail(videoId: "1", title: "title")
}



