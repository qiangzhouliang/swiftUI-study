//
//  VideoDetail.swift
//  NewsApp
//
//  Created by swan on 2024/11/8.
//

import SwiftUI
import AVFoundation
import _AVKit_SwiftUI

struct VideoDetail: View {
    
    var videoId: String
    var title: String
    
    @StateObject private var videoVM = VideoViewModel()
    
    @State var webViewContentHeight: CGFloat = 0
    
    
    var body: some View {
        var avPlayer: AVPlayer? = nil
        if let url = URL(string: videoVM.videoUrl) {
            avPlayer = AVPlayer(url: url)
        }
        
        return VStack {
            VideoPlayer(player: avPlayer)
                .aspectRatio(16/9, contentMode: .fit)
            
            ScrollView {
                Text("\(title)")
                    .font(.system(size: 16))
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Color.gray.opacity(0.3).frame(height: 10)
                
                WebView(htmlString: videoVM.videoDesc,scrollHeight: $webViewContentHeight)
                    .frame(height: webViewContentHeight + 20)
            }
        }
        .navigationTitle("详情")
        .onAppear(perform: {
            videoVM.info(videoId: videoId)
        })
    }
}

#Preview {
    VideoDetail(videoId: "1", title: "title")
}
