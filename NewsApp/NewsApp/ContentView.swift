//
//  ContentView.swift
//  NewsApp
//
//  Created by swan on 2024/11/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            StudyPage()
                .tabItem {
                    Image("study_icon")
                    Text("学习")
                }.ignoresSafeArea(edges: .top)
            TaskPage()
                .tabItem {
                    Image("task_icon")
                    Text("任务")
                }
                .ignoresSafeArea(edges: .top)
            ProfilePage()
                .tabItem {
                    Image("mine_icon")
                    Text("我的")
                }
                .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    ContentView()
}
