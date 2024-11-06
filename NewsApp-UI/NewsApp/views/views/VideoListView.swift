//
//  VideoListView.swift
//  NewsApp
//
//  Created by swan on 2024/11/6.
//

import SwiftUI

struct VideoListView: View {
    
    var videos: [VideoModel]
    
    var body: some View {
        ForEach(videos) { item in
            HStack {
                AsyncImage(item.imgUrl) {
                    Text("loading")
                }.frame(width: 100, height: 56.25)
                    .clipShape(RoundedRectangle(cornerRadius: 5.0))
                VStack(alignment: .leading) {
                    Text(item.title)
                        .font(.system(size: 16))
                        .foregroundColor(getColor(red: 51, green: 51, blue: 51))
                    Spacer()
                    HStack() {
                        Text(Image(systemName: "video.circle")) + Text("视频教程")
                        Spacer()
                        Text("时长：\(item.duration)")
                    }
                    .font(.system(size: 10))
                    .foregroundColor(getColor(red: 153, green: 153, blue: 153))
                    
                }
            }
            .padding(.top)
        .padding(.horizontal)
        }
    }
}

#Preview {
    VideoListView(videos: [
        VideoModel(id: "0", title: "人社部向疫情防控期参与复工复产的劳动者表达敬佩：您辛苦了", duration: "20:00:00", imgUrl: "https://pic.rmb.bdstatic.com/bjh/events/e26cde43bb83910b5e6da54c89a4402f2501.jpeg@h_1280")
    ]).frame(height: 66)
}
