@_private(sourceFile: "ContentView.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/ContentView.swift", line: 12)
        TabView {
            StudyPage()
                .tabItem {
                    Image(__designTimeString("#29701.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "study_icon"))
                    Text(__designTimeString("#29701.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[1].arg[0].value", fallback: "学习"))
                }.ignoresSafeArea(edges: .top)
            TaskPage()
                .tabItem {
                    Image(__designTimeString("#29701.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "task_icon"))
                    Text(__designTimeString("#29701.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[1].arg[0].value", fallback: "任务"))
                }
                .ignoresSafeArea(edges: .top)
            ProfilePage()
                .tabItem {
                    Image(__designTimeString("#29701.[1].[0].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.[0].arg[0].value", fallback: "mine_icon"))
                    Text(__designTimeString("#29701.[1].[0].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.[1].arg[0].value", fallback: "我的"))
                }
                .ignoresSafeArea(edges: .top)
        }
    
#sourceLocation()
    }
}

import struct NewsApp.ContentView
#Preview {
    ContentView()
}



