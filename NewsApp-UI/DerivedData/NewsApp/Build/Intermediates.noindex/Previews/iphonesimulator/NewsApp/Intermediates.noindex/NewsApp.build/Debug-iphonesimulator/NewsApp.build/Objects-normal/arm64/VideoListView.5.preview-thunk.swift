@_private(sourceFile: "VideoListView.swift") import NewsApp
import func SwiftUI.__designTimeSelection
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension VideoListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/VideoListView.swift", line: 15)
        __designTimeSelection(ForEach(__designTimeSelection(videos, "#15830.[1].[1].property.[0].[0].arg[0].value")) { item in
            __designTimeSelection(HStack {
                __designTimeSelection(AsyncImage(__designTimeSelection(item.imgUrl, "#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value")) {
                    __designTimeSelection(Text(__designTimeString("#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "loading")), "#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0]")
                }.frame(width: __designTimeInteger("#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 100), height: __designTimeFloat("#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[1].value", fallback: 56.25)), "#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[0]")
                __designTimeSelection(VStack(alignment: .leading) {
                    __designTimeSelection(Text(__designTimeSelection(item.title, "#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value"))
                        .font(.system(size: __designTimeInteger("#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 16)))
                        .foregroundColor(__designTimeSelection(getColor(red: __designTimeInteger("#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 51), green: __designTimeInteger("#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[1].arg[0].value.arg[1].value", fallback: 51), blue: __designTimeInteger("#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[1].arg[0].value.arg[2].value", fallback: 51)), "#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[1].arg[0].value")), "#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[0]")
                    __designTimeSelection(Spacer(), "#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[1]")
                    __designTimeSelection(HStack() {
                        Text(Image(systemName: __designTimeString("#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[0].[0]", fallback: "video.circle"))) + Text(__designTimeString("#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[0].[1]", fallback: "视频教程"))
                        __designTimeSelection(Spacer(), "#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1]")
                        __designTimeSelection(Text("时长：\(__designTimeSelection(item.duration, "#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[2].arg[0].value.[1].value.arg[0].value"))"), "#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[2]")
                    }
                    .font(.system(size: __designTimeInteger("#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[0].arg[0].value.arg[0].value", fallback: 10)))
                    .foregroundColor(__designTimeSelection(getColor(red: __designTimeInteger("#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[1].arg[0].value.arg[0].value", fallback: 153), green: __designTimeInteger("#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[1].arg[0].value.arg[1].value", fallback: 153), blue: __designTimeInteger("#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[1].arg[0].value.arg[2].value", fallback: 153)), "#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[1].arg[0].value")), "#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[2]")
                    
                }, "#15830.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1]")
            }
            .padding(.top)
        .padding(.horizontal), "#15830.[1].[1].property.[0].[0].arg[1].value.[0]")
        }, "#15830.[1].[1].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct NewsApp.VideoListView
#Preview {
    VideoListView(videos: [
        VideoModel(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", duration: "20:00:00", imgUrl: "https://pic.rmb.bdstatic.com/bjh/events/e26cde43bb83910b5e6da54c89a4402f2501.jpeg@h_1280")
    ]).frame(height: 66)
}



